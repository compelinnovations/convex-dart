// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

final query114 = QueryOperation<Query114Args, Query114Response>(
  'tasks:query114',
  serialize,
  deserialize,
);
BTreeMapStringValue serialize(Query114Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        if (args.i.email.isDefined)
          'email': encodeValue(args.i.email.asDefined().value),
        if (args.i.name.isDefined)
          'name': encodeValue(args.i.name.asDefined().value),
        'phone': encodeValue(args.i.phone),
      }),
    },
  );
}

Query114Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on778608) => (
      i: (on778608['i'] as IMap<String, dynamic>).then(
        (on141558) => (
          email: on141558.containsKey('email')
              ? Defined((on141558['email'] as String))
              : Undefined<String>(),
          name: on141558.containsKey('name')
              ? Defined((on141558['name'] as String))
              : Undefined<String>(),
          phone: (on141558['phone'] as String?),
        ),
      ),
    ),
  );
}

typedef Query114Args = ({
  ({Optional<String> email, Optional<String> name, String? phone}) i,
});
typedef Query114Response = ({
  ({Optional<String> email, Optional<String> name, String? phone}) i,
});
