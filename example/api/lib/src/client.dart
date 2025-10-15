// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import 'package:convex_dart/src/convex_dart_for_generated_code.dart'
    as internal;

/// Wrapper class for ConvexClient that exposes the underlying client instance
class ConvexClient {
  /// Initialize the ConvexClient singleton
  static Future<void> init() async {
    await internal.ConvexClient.init(
      deploymentUrl: "https://bold-armadillo-832.convex.cloud",
      clientId: "flutter-rust-client",
    );
  }

  /// Get the singleton instance of the internal ConvexClient
  static internal.ConvexClient get instance => internal.ConvexClient.instance;

  /// Set the authentication token for the client
  static Future<void> setAuth({required String? token}) async {
    await internal.ConvexClient.instance.setAuth(token: token);
  }
}
