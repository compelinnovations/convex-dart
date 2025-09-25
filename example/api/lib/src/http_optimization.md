# HTTP2/HTTP3 Optimization for Convex Dart Client

## Current Status

Your Flutter-Rust bridge setup uses:

- **HTTP Crate**: `http = "1.3.1"` - Provides HTTP types and constants
- **WebSockets**: `tokio-tungstenite = "0.21.0"` for real-time subscriptions
- **TLS**: `rustls-tls-webpki-roots` feature for secure connections
- **Convex Client**: `convex = "0.9"` for backend communication

## HTTP Protocol Support

### HTTP/2 Support ✅
- **`http` crate 1.3.1**: Includes `Version::HTTP_2` constant
- **tokio-tungstenite**: WebSocket connections can upgrade from HTTP/2
- **Convex backend**: Likely supports HTTP/2 for initial handshake

### HTTP/3 Support ⚠️
- **`http` crate**: May include HTTP/3 constants (implementation-dependent)
- **tokio-tungstenite**: Limited HTTP/3 WebSocket support as of 2024
- **Ecosystem status**: HTTP/3 is emerging but not yet standard in Rust WebSocket libraries

## Optimization Strategies

### 1. Connection Pooling (Built-in)
The Convex client maintains persistent connections automatically:
```rust
// In lib.rs - client is reused across operations
let mut client = self.connected_client().await?;
```

### 2. Concurrent Operations
Take advantage of HTTP/2 multiplexing:
```dart
// Execute multiple operations concurrently
final results = await Future.wait([
  getMe().withRetry(),
  listPendingFieldSignUps(query).withRetry(),
  otherOperation().withRetry(),
]);
```

### 3. WebSocket Optimization (Real-time)
Convex uses WebSockets for subscriptions, which bypasses HTTP versioning:
```dart
// Subscriptions use WebSocket connections
final subscription = await ConvexClient.instance.subscribe(
  name: 'myQuery',
  args: args,
  onUpdate: (result) => handleUpdate(result),
);
```

### 4. Request Batching
While not built into the current client, you can implement batching:
```dart
class BatchedConvexClient {
  final List<Future<dynamic>> _pendingOperations = [];

  Future<void> executeBatch() async {
    if (_pendingOperations.isNotEmpty) {
      await Future.wait(_pendingOperations);
      _pendingOperations.clear();
    }
  }

  void addToBatch(Future<dynamic> operation) {
    _pendingOperations.add(operation);
  }
}
```

## Performance Recommendations

### 1. Use Subscriptions for Real-time Data
Instead of polling with queries, use subscriptions:
```dart
// ❌ Avoid polling
Timer.periodic(Duration(seconds: 5), (_) async {
  final data = await getLatestData();
});

// ✅ Use subscriptions
final subscription = await subscribe(
  name: 'latestData',
  args: {},
  onUpdate: (data) => updateUI(data),
);
```

### 2. Implement Circuit Breaker Pattern
Combine with retry logic for better resilience:
```dart
class CircuitBreaker {
  int _failureCount = 0;
  DateTime? _lastFailureTime;
  static const _threshold = 5;
  static const _timeout = Duration(minutes: 1);

  Future<T> execute<T>(Future<T> Function() operation) async {
    if (_isOpen()) {
      throw Exception('Circuit breaker is open');
    }

    try {
      final result = await operation();
      _onSuccess();
      return result;
    } catch (e) {
      _onFailure();
      rethrow;
    }
  }

  bool _isOpen() {
    if (_failureCount >= _threshold) {
      final timeSinceLastFailure = DateTime.now().difference(_lastFailureTime!);
      return timeSinceLastFailure < _timeout;
    }
    return false;
  }

  void _onSuccess() => _failureCount = 0;
  void _onFailure() {
    _failureCount++;
    _lastFailureTime = DateTime.now();
  }
}
```

### 3. Connection Management
The Rust client handles this automatically, but you can optimize by:
- Reusing the same ConvexClient instance
- Avoiding frequent reconnections
- Using connection pooling (built-in)

## Actual Architecture Analysis

Based on your `Cargo.lock` analysis:

```rust
// From your dependencies:
http = "1.3.1"                    // HTTP types with HTTP_2 constants
tokio-tungstenite = "0.21.0"      // WebSocket implementation
rustls = "0.22.4"                 // TLS implementation
convex = "0.9"                    // Backend client
```

### WebSocket-First Architecture
Your setup primarily uses **WebSockets** rather than traditional HTTP requests:
- Initial connection may use HTTP/1.1 or HTTP/2 for WebSocket upgrade
- Once established, all communication happens over WebSocket protocol
- This bypasses HTTP versioning concerns for most operations

### Connection Flow
1. **HTTP Upgrade Request**: Uses `http` crate types (supports HTTP/2)
2. **WebSocket Handshake**: Via `tokio-tungstenite`
3. **Secure Transport**: Through `rustls` TLS implementation
4. **Real-time Communication**: WebSocket frames (not HTTP requests)

## Future Improvements

1. **HTTP/3 Support**: Monitor Convex Rust client updates for HTTP/3 support
2. **Connection Metrics**: Request connection diagnostics from Convex team
3. **Custom HTTP Client**: If needed, fork and modify the Rust client
4. **Protocol Negotiation**: Implement fallback mechanisms for different protocols

## Configuration Options

Currently, the Convex Dart client doesn't expose HTTP protocol configuration. The underlying Rust client handles protocol negotiation automatically based on server capabilities.

For advanced HTTP configuration, you would need to:
1. Modify the Rust client source
2. Expose additional configuration options through FFI
3. Rebuild the native library

This is generally not recommended unless you have specific performance requirements that aren't met by the default implementation.