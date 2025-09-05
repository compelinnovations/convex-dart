//! This module is a 1:1 copy of some of the types in the convex-rs
//! flutter_rust_bridge is only able to create bindings for certain types if their definition is in this crate.
use std::collections::BTreeMap;

use flutter_rust_bridge::frb;
use thiserror::Error;

pub mod conversion;
pub mod function;
pub mod sorting;

/// A value that can be passed as an argument or returned from Convex functions.
/// They correspond to the [supported Convex types](https://docs.convex.dev/database/types).
#[derive(Clone, Debug)]
#[allow(missing_docs)]
#[frb(non_opaque)]
pub enum DartValue {
    Null,
    Int64(i64),
    Float64(f64),
    Boolean(bool),
    String(String),
    Bytes(Vec<u8>),
    Array(Vec<DartValue>),
    Object(BTreeMap<String, DartValue>),
}

impl<T: Into<DartValue>> From<Option<T>> for DartValue {
    fn from(v: Option<T>) -> DartValue {
        v.map(|v| v.into()).unwrap_or(DartValue::Null)
    }
}

impl From<i64> for DartValue {
    fn from(v: i64) -> DartValue {
        DartValue::Int64(v)
    }
}

impl From<f64> for DartValue {
    fn from(v: f64) -> DartValue {
        DartValue::Float64(v)
    }
}

impl From<bool> for DartValue {
    fn from(v: bool) -> DartValue {
        DartValue::Boolean(v)
    }
}

impl From<&str> for DartValue {
    fn from(v: &str) -> DartValue {
        DartValue::String(v.into())
    }
}

impl From<String> for DartValue {
    fn from(v: String) -> DartValue {
        DartValue::String(v)
    }
}

impl From<Vec<u8>> for DartValue {
    fn from(v: Vec<u8>) -> DartValue {
        DartValue::Bytes(v)
    }
}

impl From<Vec<DartValue>> for DartValue {
    fn from(v: Vec<DartValue>) -> DartValue {
        DartValue::Array(v)
    }
}

/// An application error that can be returned from Convex functions. To learn
/// more about throwing custom application errors, see [Convex Errors](https://docs.convex.dev/functions/error-handling/application-errors#throwing-application-errors).
#[derive(Error, Clone, PartialEq, Eq)]
#[error("{:}", message)]
#[frb(non_opaque)]
pub struct DartConvexError {
    /// From any error, redacted from prod deployments.
    pub message: String,
    /// Custom application error data payload that can be passed from your
    /// function to a client.
    pub data: DartValue,
}

impl std::fmt::Debug for DartConvexError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let message = &self.message;
        write!(f, "{message:#?}")
    }
}
