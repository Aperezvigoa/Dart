void main() {

  // In Dart, a late variable is declared without an initial value, but is guaranteed
  // to be initialized before it is accessed. This allows deferred initialization, which
  // can be useful for expensive computations or values that are not immediately
  // availbale.

  double simpleFloat = 10.25;
  print('Simple float: $simpleFloat');

  late final double lateNumber;
  lateNumber = 3.14;

  // Cannot change again because is final.
  // lateNumber = 5.0;

  print('late final double: $lateNumber');

}