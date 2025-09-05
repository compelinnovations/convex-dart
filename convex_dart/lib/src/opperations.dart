import 'package:convex_dart/src/convex_dart_for_generated_code.dart';

sealed class Operation<Input, Output> {
  final String identifier;

  final BTreeMapStringValue? Function(Input input) encodeArgs;
  final Output Function(dynamic result) decodeResult;
  const Operation(this.identifier, this.encodeArgs, this.decodeResult);

  ConvexClient get client => ConvexClient.instance;
  Future<Output> execute(Input args);
}

class QueryOperation<Input, Output> extends Operation<Input, Output> {
  const QueryOperation(super.identifier, super.encodeArgs, super.decodeResult);

  @override
  Future<Output> execute(Input args) async {
    return decodeResult(
      decodeValue(
        await client.query(identifier, encodeArgs(args) ?? encodeMap({})),
      ),
    );
  }
}

class MutationOperation<Input, Output> extends Operation<Input, Output> {
  const MutationOperation(
    super.identifier,
    super.encodeArgs,
    super.decodeResult,
  );

  @override
  Future<Output> execute(Input args) async {
    return decodeResult(
      decodeValue(
        await client.mutation(
          name: identifier,
          args: encodeArgs(args) ?? encodeMap({}),
        ),
      ),
    );
  }
}

class ActionOperation<Input, Output> extends Operation<Input, Output> {
  const ActionOperation(super.identifier, super.encodeArgs, super.decodeResult);

  @override
  Future<Output> execute(Input args) async {
    return decodeResult(
      decodeValue(
        await client.action(
          name: identifier,
          args: encodeArgs(args) ?? encodeMap({}),
        ),
      ),
    );
  }
}
