void main(List<String> args) {}

//user defined/custom exception class
class AlgebraicDivisionException implements Exception {
  String message;

  AlgebraicDivisionException(this.message);

  @override
  String toString() {
    return "Exception Message: $message";
  }
}
