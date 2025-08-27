void main() {

  // ====== Numbers
  
  // Var is not recommended in modern Dart
  var numberA = 10;
  print('Initialized with var: $numberA');

  // More recommended practices.

  int numberIntA = 123;
  print('Integer initialized using int: $numberIntA');

  double Pi = 3.14;
  print('Floating point number initialized using double: $Pi');

  // A variable that can be null
  int? possibleNullNumber;
  print(possibleNullNumber);

  // Using late instead ? NOT equal to null
  late int lateNumber;
  lateNumber = 201019;
  print(lateNumber);

}