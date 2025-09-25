// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_raw_type, inference_failure_on_untyped_parameter
import "package:convex_dart/src/convex_dart_for_generated_code.dart";

class $AscLiteral implements Literal {
  const $AscLiteral();
  const $AscLiteral.validate(dynamic value)
    : assert(value == 'asc', r"Value mismatch for $AscLiteral");

  @override
  final value = 'asc';

  @override
  bool operator ==(Object other) {
    if (other is $AscLiteral) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return r"$AscLiteral(asc)";
  }
}

class $DescLiteral implements Literal {
  const $DescLiteral();
  const $DescLiteral.validate(dynamic value)
    : assert(value == 'desc', r"Value mismatch for $DescLiteral");

  @override
  final value = 'desc';

  @override
  bool operator ==(Object other) {
    if (other is $DescLiteral) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return r"$DescLiteral(desc)";
  }
}

class $CompletedLiteral implements Literal {
  const $CompletedLiteral();
  const $CompletedLiteral.validate(dynamic value)
    : assert(value == 'Completed', r"Value mismatch for $CompletedLiteral");

  @override
  final value = 'Completed';

  @override
  bool operator ==(Object other) {
    if (other is $CompletedLiteral) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return r"$CompletedLiteral(Completed)";
  }
}

class $PendingLiteral implements Literal {
  const $PendingLiteral();
  const $PendingLiteral.validate(dynamic value)
    : assert(value == 'Pending', r"Value mismatch for $PendingLiteral");

  @override
  final value = 'Pending';

  @override
  bool operator ==(Object other) {
    if (other is $PendingLiteral) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return r"$PendingLiteral(Pending)";
  }
}

class $RejectedLiteral implements Literal {
  const $RejectedLiteral();
  const $RejectedLiteral.validate(dynamic value)
    : assert(value == 'Rejected', r"Value mismatch for $RejectedLiteral");

  @override
  final value = 'Rejected';

  @override
  bool operator ==(Object other) {
    if (other is $RejectedLiteral) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return r"$RejectedLiteral(Rejected)";
  }
}

class $ExpiredLiteral implements Literal {
  const $ExpiredLiteral();
  const $ExpiredLiteral.validate(dynamic value)
    : assert(value == 'Expired', r"Value mismatch for $ExpiredLiteral");

  @override
  final value = 'Expired';

  @override
  bool operator ==(Object other) {
    if (other is $ExpiredLiteral) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return r"$ExpiredLiteral(Expired)";
  }
}
