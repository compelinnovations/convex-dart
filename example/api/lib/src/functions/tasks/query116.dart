// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

BTreeMapStringValue serialize(Query116Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'data': encodeValue({
          'type': encodeValue(
            args.i.data.type.split(
              (on936692) => encodeValue(on936692),
              (on99899) => encodeValue(on99899),
              (on515885) => encodeValue(on515885),
            ),
          ),
          'value': encodeValue(args.i.data.value),
        }),
        'metadata': encodeValue({
          for (final on437526 in args.i.metadata.entries)
            on437526.key: encodeValue(encodeValue(on437526.value)),
        }),
      }),
    },
  );
}

Query116Response deserialize(DartValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on459569) => (
      i: (on459569['i'] as IMap<String, dynamic>).then(
        (on121949) => (
          data: (on121949['data'] as IMap<String, dynamic>).then(
            (on870622) => (
              type: Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral>(
                on870622['type'],
              ),
              value: on870622['value'],
            ),
          ),
          metadata: (on121949['metadata'] as IMap<String, dynamic>).map(
            (on672756, on94281) => MapEntry(on672756, on94281),
          ),
        ),
      ),
    ),
  );
}

typedef Query116Args = ({
  ({
    ({
      Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral> type,
      dynamic value,
    })
    data,
    IMap<String, dynamic> metadata,
  })
  i,
});
typedef Query116Response = ({
  ({
    ({
      Union3<$TextLiteral, $NumberLiteral, $BooleanLiteral> type,
      dynamic value,
    })
    data,
    IMap<String, dynamic> metadata,
  })
  i,
});
