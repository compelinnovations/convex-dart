/// Base class for all literal types.
abstract class Literal {
  const Literal();
  dynamic get value;

  @override
  String toString() {
    return value.toString();
  }

  @override
  bool operator ==(Object other) {
    return other is Literal && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
