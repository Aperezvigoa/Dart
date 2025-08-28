void main() {

  // Add
  final int intA = 5;
  final int intB = 16;

  print('$intA + $intB: ${intA + intB}');

  // Substraction
  final int intC = 20;
  final int intD = 23;
  print('$intC - $intD: ${intC * intD}');

  // Multiplication
  final double doubleA = 10.30;
  final int intE = 32;
  print('$doubleA - $intE: ${doubleA * intE}');

  // Division
  final double doubleB = 16.35;
  final double doubleC = 3.33;
  print('$doubleB / $doubleC: ${doubleB / doubleC}');

  // Modulus
  final int intF = 10;
  final int intG = 3;
  print('$intF % $intG = ${intF % intG}');

  // Fast add
  int number = 16;
  number++;
  print('number: $number');

  number += 12;
  print('number: $number');

  number -= 2;
  print('number: $number');
  
  number *= 10;
  print('number: $number');
}