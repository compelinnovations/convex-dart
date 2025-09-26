import 'package:convex_dart/src/convex_dart_for_generated_code.dart';
import 'package:convex_dart/src/rust/dart_value/function.dart';
import 'package:convex_dart/src/rust/lib.dart';

sealed class Operation<Input, Output_> {
  final String identifier;

  final BTreeMapStringValue Function(Input input) encodeArgs;
  final Output_ Function(DartValue result) decodeResult;
  const Operation(this.identifier, this.encodeArgs, this.decodeResult);

  ConvexClient get client => ConvexClient.instance;
  Future<Output_> execute(Input args);
}

class QueryOperation<Input, Output_> extends Operation<Input, Output_> {
  const QueryOperation(super.identifier, super.encodeArgs, super.decodeResult);

  @override
  Future<Output_> execute(Input args) async {
    return decodeResult(await client.query(identifier, encodeArgs(args)));
  }

  /// Makes the operation callable like a function
  Future<Output_> call([Input? args]) async {
    return execute(args as Input);
  }

  Future<SubscriptionHandle> subscribe(
    Input args,
    void Function(SubscribeEvent<Output_> result) onUpdate,
  ) {
    return client.subscribe(
      name: identifier,
      args: encodeArgs(args),
      onUpdate: (value) {
        onUpdate(SubscribeEvent.fromDartFunctionResult(value, decodeResult));
      },
    );
  }
}

class MutationOperation<Input, Output_> extends Operation<Input, Output_> {
  const MutationOperation(
    super.identifier,
    super.encodeArgs,
    super.decodeResult,
  );

  @override
  Future<Output_> execute(Input args) async {
    return decodeResult(
      await client.mutation(name: identifier, args: encodeArgs(args)),
    );
  }

  /// Makes the operation callable like a function
  Future<Output_> call([Input? args]) async {
    return execute(args as Input);
  }
}

class ActionOperation<Input, Output_> extends Operation<Input, Output_> {
  const ActionOperation(super.identifier, super.encodeArgs, super.decodeResult);

  @override
  Future<Output_> execute(Input args) async {
    return decodeResult(
      await client.action(name: identifier, args: encodeArgs(args)),
    );
  }

  /// Makes the operation callable like a function
  Future<Output_> call([Input? args]) async {
    return execute(args as Input);
  }
}

sealed class SubscribeEvent<T> {
  const SubscribeEvent();

  static SubscribeEvent<T> fromDartFunctionResult<T>(
    DartFunctionResult result,
    T Function(DartValue value) decodeResult,
  ) {
    return switch (result) {
      DartFunctionResult_Value i => SuccessEvent(decodeResult(i.field0)),
      DartFunctionResult_ErrorMessage i => ClientErrorEvent(i.field0),
      DartFunctionResult_ConvexError i => ConvexErrorEvent(
        i.field0.message,
        decodeValue(i.field0.data),
      ),
    };
  }
}

/// The error message of a Convex function run that does not complete
/// successfully.
class ClientErrorEvent<T> extends SubscribeEvent<T> {
  final String message;
  const ClientErrorEvent(this.message);

  @override
  String toString() {
    return 'ClientErrorEvent(message: $message)';
  }
}

/// The error payload of a Convex function run that doesn't complete
/// successfully, with an application-level error.
class ConvexErrorEvent<T> extends SubscribeEvent<T> {
  /// From any error, redacted from prod deployments.
  final String message;

  /// Custom application error data payload that can be passed from your
  /// function to a client.
  final dynamic data;
  const ConvexErrorEvent(this.message, this.data);

  @override
  String toString() {
    return 'ConvexErrorEvent(message: $message, data: $data)';
  }
}

/// The result of a successful subscription
class SuccessEvent<T> extends SubscribeEvent<T> {
  final T data;
  const SuccessEvent(this.data);

  @override
  String toString() {
    return 'SuccessEvent(data: $data)';
  }
}
