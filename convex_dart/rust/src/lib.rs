mod dart_value;
mod frb_generated;
use std::{collections::BTreeMap, sync::Arc};

#[cfg(debug_assertions)]
use android_logger::Config;
use convex::{ConvexClient, ConvexClientBuilder, FunctionResult, Value};
use flutter_rust_bridge::{frb, DartFnFuture};
use futures::{
    channel::oneshot::{self, Sender},
    pin_mut, select_biased, FutureExt, StreamExt,
};
use log::debug; // Logging for debugging purposes
#[cfg(debug_assertions)]
use log::LevelFilter;
use parking_lot::Mutex;

use crate::dart_value::{function::DartFunctionResult, DartConvexError, DartValue};

/// Connection state enum exposed to Dart
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
#[frb]
pub enum ConnectionState {
    /// Client is connected and operational
    Connected,
    /// Client has disconnected (WebSocket dropped)
    Disconnected,
    /// Client is attempting to reconnect
    Reconnecting,
}

// Custom error type for Convex client operations, exposed to Dart.
// Instead of serializing ConvexError into a string, we directly pass the DartConvexError
// to Dart.
#[derive(Debug, thiserror::Error)]
#[frb]
pub enum ClientError {
    /// An internal error within the mobile Convex client.
    #[error("InternalError: {msg}")]
    InternalError { msg: String },
    /// An application-specific error from a remote Convex backend function.
    #[error("ConvexError: {err}")]
    ConvexError { err: DartConvexError },
    /// An unexpected server-side error from a remote Convex function.
    #[error("ServerError: {msg}")]
    ServerError { msg: String },
}

impl From<anyhow::Error> for ClientError {
    fn from(value: anyhow::Error) -> Self {
        Self::InternalError {
            msg: value.to_string(),
        }
    }
}

/// Trait defining the interface for handling subscription updates.
trait QuerySubscriber: Send + Sync {
    // Due to restrictions on flutter_rust_bridge, we have made this function async
    // We've also unified on_error and on_update into a single callback
    /// Called when a new update is received
    async fn on_update(&self, value: DartFunctionResult);
}

/// Adapter for Dart functions as subscribers, handling async callbacks.
struct DartQuerySubscriber {
    on_update: Box<dyn Fn(DartFunctionResult) -> DartFnFuture<()> + Send + Sync>,
}

impl DartQuerySubscriber {
    fn new(on_update: Box<dyn Fn(DartFunctionResult) -> DartFnFuture<()> + Send + Sync>) -> Self {
        DartQuerySubscriber { on_update }
    }
}

impl QuerySubscriber for DartQuerySubscriber {
    async fn on_update(&self, value: DartFunctionResult) {
        (self.on_update)(value).await;
    }
}

pub struct SubscriptionHandle {
    // flutter_rust_bridge does not work well with Arc<...> types, so we've
    // moved the Arc<...> inside the struct instead. We can then return
    // an instance of SubscriptionHandle instead of an Arc<SubscriptionHandle>.
    cancel_sender: Arc<Mutex<Option<Sender<()>>>>,
}

impl SubscriptionHandle {
    fn new(cancel_sender: Sender<()>) -> Self {
        SubscriptionHandle {
            cancel_sender: Arc::new(Mutex::new(Some(cancel_sender))),
        }
    }

    /// Cancels the subscription by sending a cancellation signal.
    #[frb(sync)]
    pub fn cancel(&self) {
        if let Some(sender) = self.cancel_sender.lock().take() {
            sender.send(()).unwrap();
        }
    }
}

/// Callback type for connection state changes
type ConnectionStateCallback = Box<dyn Fn(ConnectionState) -> DartFnFuture<()> + Send + Sync>;

/// A wrapper around a [ConvexClient] and a [tokio::runtime::Runtime] used to
/// asynchronously call Convex functions.
///
/// That enables easy async communication for mobile clients. They can call the
/// various methods on [MobileConvexClient] and await results without blocking
/// their main threads.
pub struct MobileConvexClient {
    deployment_url: String,
    client_id: String,
    client: Mutex<Option<ConvexClient>>,
    rt: tokio::runtime::Runtime,
    /// Current connection state
    connection_state: Mutex<ConnectionState>,
    /// Callback for connection state changes
    on_connection_state_changed: Mutex<Option<Arc<ConnectionStateCallback>>>,
}

impl MobileConvexClient {
    /// Creates a new [MobileConvexClient].
    ///
    /// The internal [ConvexClient] doesn't get created/connected until the
    /// first public method call that hits the Convex backend.
    ///
    /// The `client_id` should be a string representing the name and version of
    /// the foreign client.
    #[frb(sync)]
    pub fn new(deployment_url: String, client_id: String) -> MobileConvexClient {
        #[cfg(debug_assertions)]
        android_logger::init_once(Config::default().with_max_level(LevelFilter::Error));
        let rt = tokio::runtime::Builder::new_multi_thread()
            .enable_all()
            .build()
            .unwrap();
        MobileConvexClient {
            deployment_url,
            client_id,
            client: Mutex::new(None),
            rt,
            connection_state: Mutex::new(ConnectionState::Disconnected),
            on_connection_state_changed: Mutex::new(None),
        }
    }

    /// Register a callback to be notified of connection state changes.
    ///
    /// The callback will be called whenever the WebSocket connection state changes
    /// (connected, disconnected, reconnecting).
    #[frb]
    pub fn set_connection_state_callback(
        &self,
        callback: impl Fn(ConnectionState) -> DartFnFuture<()> + Send + Sync + 'static,
    ) {
        let mut guard = self.on_connection_state_changed.lock();
        *guard = Some(Arc::new(Box::new(callback)));
        debug!("Connection state callback registered");
    }

    /// Get the current connection state
    #[frb(sync)]
    pub fn get_connection_state(&self) -> ConnectionState {
        *self.connection_state.lock()
    }

    /// Internal helper to update connection state and notify callback
    fn update_connection_state(&self, new_state: ConnectionState) {
        let old_state = {
            let mut guard = self.connection_state.lock();
            let old = *guard;
            *guard = new_state;
            old
        };

        if old_state != new_state {
            debug!("Connection state changed: {:?} -> {:?}", old_state, new_state);
            if let Some(callback) = self.on_connection_state_changed.lock().as_ref() {
                let callback = callback.clone();
                self.rt.spawn(async move {
                    callback(new_state).await;
                });
            }
        }
    }

    /// Returns a connected [ConvexClient].
    ///
    /// The first call is guaranteed to create the client object and subsequent
    /// calls will return clones of that connected client.
    ///
    /// Returns an error if ...
    /// TODO figure out reasons.
    async fn connected_client(&self) -> anyhow::Result<ConvexClient> {
        // Check if we already have a client
        {
            let guard = self.client.lock();
            if let Some(ref client) = *guard {
                return Ok(client.clone());
            }
        }

        // Create a new client
        debug!("Creating new Convex client connection...");
        let url = self.deployment_url.clone();
        let client_id = self.client_id.clone();
        let new_client = self.rt
            .spawn(async move {
                ConvexClientBuilder::new(url.as_str())
                    .with_client_id(&client_id)
                    .build()
                    .await
            })
            .await??;

        // Store and return the new client
        {
            let mut guard = self.client.lock();
            *guard = Some(new_client.clone());
        }

        // Update connection state to Connected
        self.update_connection_state(ConnectionState::Connected);
        debug!("Convex client connected successfully");

        Ok(new_client)
    }

    /// Reconnects the client by dropping the existing connection and creating a new one.
    ///
    /// Call this when the WebSocket connection becomes stale (e.g., after app backgrounding).
    /// The next query/mutation/action will establish a fresh connection.
    #[frb]
    pub async fn reconnect(&self) -> Result<(), ClientError> {
        debug!("Reconnecting Convex client...");

        // Update state to Reconnecting
        self.update_connection_state(ConnectionState::Reconnecting);

        // Clear the existing client
        {
            let mut guard = self.client.lock();
            *guard = None;
        }

        // Force creation of a new client by calling connected_client
        // This will update state to Connected on success
        self.connected_client().await?;
        debug!("Convex client reconnected successfully");
        Ok(())
    }

    /// Marks the connection as disconnected.
    ///
    /// Call this when the WebSocket connection drops (detected via subscription stream ending).
    /// This will notify Dart so it can attempt to reconnect when internet is available.
    pub fn mark_disconnected(&self) {
        debug!("Marking Convex client as disconnected");
        // Clear the client so next operation will create a new one
        {
            let mut guard = self.client.lock();
            *guard = None;
        }
        self.update_connection_state(ConnectionState::Disconnected);
    }

    /// Executes a query on the Convex backend.
    #[frb]
    pub async fn query(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
    ) -> Result<DartValue, ClientError> {
        let mut client = self.connected_client().await?;
        debug!("got the client");
        let result = client.query(name.as_str(), args).await?;
        debug!("got the result");
        handle_direct_function_result(result)
    }

    /// Subscribe to updates to a query against the Convex backend.
    ///
    /// The [QuerySubscriber] will be called back with initial query results and
    /// it will continue to get called as the underlying data changes.
    ///
    /// The returned [SubscriptionHandle] can be used to cancel the
    /// subscription.
    #[frb]
    pub async fn subscribe(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
        on_update: impl Fn(DartFunctionResult) -> DartFnFuture<()> + Send + Sync + 'static,
    ) -> Result<SubscriptionHandle, ClientError> {
        let subscriber = Arc::new(DartQuerySubscriber::new(Box::new(on_update)));
        self.internal_subscribe(name, args, subscriber)
            .await
            .map_err(Into::into)
    }

    async fn internal_subscribe(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
        subscriber: Arc<DartQuerySubscriber>,
    ) -> anyhow::Result<SubscriptionHandle> {
        let mut client = self.connected_client().await?;
        debug!("New subscription to: {}", name);
        let mut subscription = client.subscribe(name.as_str(), args).await?;
        let (cancel_sender, cancel_receiver) = oneshot::channel::<()>();

        // Clone the callback for the spawned task to notify on disconnect
        let disconnect_callback = self.on_connection_state_changed.lock().clone();

        self.rt.spawn(async move {
            let cancel_fut = cancel_receiver.fuse();
            pin_mut!(cancel_fut);
            let mut disconnected = false;

            loop {
                select_biased! {
                    new_val = subscription.next().fuse() => {
                        match new_val {
                            Some(val) => {
                                // Got a value, pass it to the subscriber
                                subscriber.on_update(val.into()).await;
                            }
                            None => {
                                // Stream ended - WebSocket disconnected!
                                debug!("Subscription stream ended - WebSocket disconnected");
                                disconnected = true;
                                break;
                            }
                        }
                    }
                    _ = cancel_fut => {
                        debug!("Subscription canceled by user");
                        break;
                    }
                }
            }

            // If we broke out due to disconnect (not user cancel), notify Dart
            if disconnected {
                debug!("Notifying Dart of WebSocket disconnect");
                if let Some(callback) = disconnect_callback.as_ref() {
                    callback(ConnectionState::Disconnected).await;
                }
            }
        });
        Ok(SubscriptionHandle::new(cancel_sender))
    }

    /// Executes a mutation on the Convex backend.
    #[frb]
    pub async fn mutation(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
    ) -> Result<DartValue, ClientError> {
        let result = self.internal_mutation(name, args).await?;
        handle_direct_function_result(result)
    }

    /// Internal method for mutation logic.
    async fn internal_mutation(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
    ) -> anyhow::Result<FunctionResult> {
        let mut client = self.connected_client().await?;
        self.rt
            .spawn(async move { client.mutation(&name, args).await })
            .await?
    }

    /// Executes an action on the Convex backend.
    #[frb]
    pub async fn action(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
    ) -> Result<DartValue, ClientError> {
        debug!("Running action: {}", name);
        let result = self.internal_action(name, args).await?;
        debug!("Got action result: {:?}", result);
        handle_direct_function_result(result)
    }

    async fn internal_action(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
    ) -> anyhow::Result<FunctionResult> {
        let mut client = self.connected_client().await?;
        debug!("Running action: {}", name);
        self.rt
            .spawn(async move { client.action(&name, args).await })
            .await?
    }

    /// Provide an OpenID Connect ID token to be associated with this client.
    ///
    /// Doing so will share that information with the Convex backend and a valid
    /// token will give the backend knowledge of a logged in user.
    ///
    /// Passing [None] for the token will disassociate a previous token,
    /// effectively returning to a logged out state.
    #[frb]
    pub async fn set_auth(&self, token: Option<String>) -> Result<(), ClientError> {
        Ok(self.internal_set_auth(token).await?)
    }

    /// Internal method for setting authentication.
    async fn internal_set_auth(&self, token: Option<String>) -> anyhow::Result<()> {
        let mut client = self.connected_client().await?;
        self.rt
            .spawn(async move { client.set_auth(token).await })
            .await
            .map_err(|e| e.into())
    }
}

/// Utility function to handle and serialize FunctionResult into a string or error.
fn handle_direct_function_result(result: FunctionResult) -> Result<DartValue, ClientError> {
    match result {
        FunctionResult::Value(v) => Ok(v.into()),
        FunctionResult::ConvexError(e) => Err(ClientError::ConvexError { err: e.into() }),
        FunctionResult::ErrorMessage(msg) => Err(ClientError::ServerError { msg }),
    }
}
