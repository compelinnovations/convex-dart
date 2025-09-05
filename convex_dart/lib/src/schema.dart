/// Base class for all Convex schemas.
abstract class ConvexSchema {
  const ConvexSchema();
}

/// An ID type for a Convex schema.
class Id<T extends ConvexSchema> {
  final String value;
  const Id(this.value);
  @override
  String toString() {
    return value;
  }

  @override
  bool operator ==(Object other) {
    return other is Id<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  factory Id.fromJson(String value) => Id(value);
  String toJson() => value;
}
