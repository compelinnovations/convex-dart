import 'dart:async';
import 'dart:io';
import 'dart:math';

/// Retry configuration for Convex operations
class RetryConfig {
  final int maxRetries;
  final Duration initialDelay;
  final double backoffMultiplier;
  final Duration maxDelay;

  const RetryConfig({
    this.maxRetries = 3,
    this.initialDelay = const Duration(milliseconds: 500),
    this.backoffMultiplier = 2.0,
    this.maxDelay = const Duration(seconds: 10),
  });

  /// Default retry config for network operations
  static const RetryConfig network = RetryConfig(
    maxRetries: 3,
    initialDelay: Duration(milliseconds: 500),
  );

  /// Aggressive retry for critical operations
  static const RetryConfig critical = RetryConfig(
    maxRetries: 5,
    initialDelay: Duration(milliseconds: 250),
    backoffMultiplier: 1.5,
  );
}

/// Retry wrapper for Convex operations
class ConvexRetry {
  static final _random = Random();

  /// Execute any async operation with retry logic
  static Future<T> execute<T>(
    Future<T> Function() operation, {
    RetryConfig config = RetryConfig.network,
    String? operationName,
  }) async {
    var attempt = 0;
    var delay = config.initialDelay;

    while (true) {
      try {
        return await operation();
      } catch (error) {
        attempt++;

        // Check if we should retry
        if (attempt > config.maxRetries || !_shouldRetry(error)) {
          rethrow;
        }

        // Add jitter to prevent thundering herd
        final jitter = Duration(
          milliseconds: _random.nextInt(delay.inMilliseconds ~/ 4),
        );
        final actualDelay = delay + jitter;

        await Future.delayed(actualDelay);

        // Exponential backoff
        delay = Duration(
          milliseconds: min(
            (delay.inMilliseconds * config.backoffMultiplier).round(),
            config.maxDelay.inMilliseconds,
          ),
        );
      }
    }
  }

  static bool _shouldRetry(dynamic error) {
    // Retry on network-related errors
    if (error is SocketException ||
        error is TimeoutException ||
        error is HttpException) {
      return true;
    }

    // Check for error messages that indicate retryable issues
    final errorString = error.toString().toLowerCase();
    return errorString.contains('connection') ||
           errorString.contains('timeout') ||
           errorString.contains('network') ||
           errorString.contains('internal') ||
           errorString.contains('server');
  }
}

/// Extension methods for easy retry usage
extension FutureRetry<T> on Future<T> {
  /// Add retry capability to any Future
  Future<T> withRetry({
    RetryConfig config = RetryConfig.network,
    String? operationName,
  }) {
    return ConvexRetry.execute(
      () => this,
      config: config,
      operationName: operationName,
    );
  }

  /// Add critical retry (more aggressive)
  Future<T> withCriticalRetry({String? operationName}) {
    return ConvexRetry.execute(
      () => this,
      config: RetryConfig.critical,
      operationName: operationName,
    );
  }
}