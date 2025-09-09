/// A type that represents an optional value.
sealed class Optional<T> {
  const Optional();
  const factory Optional.defined(T value) = Defined<T>;

  const factory Optional.undefined() = Undefined<T>;
  T? get value;
  bool get isDefined => this is Defined;
  Defined<T> asDefined() => this as Defined<T>;
}

class Undefined<T> extends Optional<T> {
  const Undefined();
  @override
  String toString() {
    return 'Undefined()';
  }

  @override
  bool operator ==(Object other) {
    return other is Undefined;
  }

  @override
  int get hashCode => 0;
  @override
  T? get value => null;
}

/// A type that represents a defined value.
class Defined<T> extends Optional<T> {
  @override
  final T value;
  const Defined(this.value);
  @override
  String toString() {
    return 'Defined($value)';
  }

  @override
  bool operator ==(Object other) {
    return other is Defined && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
