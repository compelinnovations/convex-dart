// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query78 = QueryOperation<Query78Args, Query78Response>(
  'tasks:query78',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query78Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on378866 in args.i.entries)
          on378866.key: encodeValue(encodeValue(on378866.value)),
      }),
    },
  );
}

Query78Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on526361) => (
      i: (on526361['i'] as IMap<String, dynamic>).map(
        (on117904, on298969) =>
            MapEntry(on117904, $1Literal.validate(on298969)),
      ),
    ),
  );
}

typedef Query78Args = ({IMap<String, $1Literal> i});
typedef Query78Response = ({IMap<String, $1Literal> i});
