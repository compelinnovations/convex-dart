import 'package:flutter/foundation.dart';
import 'package:api/src/functions/fieldAgentAuth/getMe.dart';

import 'retry_wrapper.dart';

/// Usage examples for retry functionality with your generated functions
class ConvexRetryExamples {
  static Future<void> examples() async {
    // Basic retry using extension method on the actual function call
    final profile = await getMe
        .execute(null)
        .withRetry(operationName: 'Get Field Agent Profile');
    debugPrint('Profile loaded: ${profile.toString()}');

    // Critical retry for essential operations
    final criticalProfile = await getMe
        .execute(null)
        .withCriticalRetry(operationName: 'Critical Profile Fetch');
    debugPrint('Critical profile loaded: ${criticalProfile.toString()}');

    // Custom retry configuration
    final customRetryProfile = await getMe
        .execute(null)
        .withRetry(
          config: const RetryConfig(
            maxRetries: 5,
            initialDelay: Duration(milliseconds: 100),
            backoffMultiplier: 1.8,
          ),
          operationName: 'Custom Retry Profile',
        );
    debugPrint('Custom retry profile loaded: ${customRetryProfile.toString()}');

    // Using ConvexRetry.execute directly
    final directProfile = await ConvexRetry.execute(
      () => getMe.execute(null),
      config: RetryConfig.critical,
      operationName: 'Direct Execution',
    );
    debugPrint('Direct profile loaded: ${directProfile.toString()}');

    // Example with list operations (commented out - adjust based on your actual functions)
    // final listResult = await listPendingFieldSignUps(ListQuery.empty()).withRetry();
  }
}

/// Common retry patterns for your Convex functions
class ConvexRetryPatterns {
  /// Standard profile fetch with network retry
  static Future<AuthUserDoc> getProfileWithRetry() {
    return getMe.execute(null).withRetry(operationName: 'Profile Fetch');
  }

  /// Critical profile fetch that must succeed
  static Future<AuthUserDoc> getCriticalProfile() {
    return getMe
        .execute(null)
        .withCriticalRetry(operationName: 'Critical Profile');
  }

  /// Custom retry for specific use cases
  static Future<T> withCustomRetry<T>(
    Future<T> Function() operation, {
    required String operationName,
    int maxRetries = 3,
    Duration initialDelay = const Duration(milliseconds: 500),
  }) {
    return ConvexRetry.execute(
      operation,
      config: RetryConfig(maxRetries: maxRetries, initialDelay: initialDelay),
      operationName: operationName,
    );
  }

  /// Example of wrapping any generated function with retry
  static Future<AuthUserDoc> safeGetMe() {
    return ConvexRetry.execute(
      () => getMe.execute(null),
      config: const RetryConfig(
        maxRetries: 3,
        initialDelay: Duration(milliseconds: 500),
        backoffMultiplier: 2.0,
      ),
      operationName: 'Safe Get Me',
    );
  }
}

/// How to use the retry system with your generated functions:
///
/// ```dart
/// // Simple usage
/// final profile = await getMe.execute(null).withRetry();
///
/// // With custom config
/// final profile = await getMe.execute(null).withRetry(
///   config: RetryConfig.critical,
///   operationName: 'Important Profile Fetch',
/// );
///
/// // Using patterns
/// final profile = await ConvexRetryPatterns.safeGetMe();
/// ```
