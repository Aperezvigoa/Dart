void main() {

  // Assignment Operator
  final int numberA = 10;
  print('Number A: $numberA');

  int? empty; // Can be null

  // We assign 20 if empty == null
  empty ??= 20;
  print('Empty value: $empty');

  // Conditional Operators
  final int age = 23;
  final String answer = age > 18 ? 'Can go party' : 'Can\'t go party';

  print('Answer is: $answer');

  // If empty == null, newNumber = 23, else newNumber == empty
  final int newNumber = empty ?? age;
  print('New Number value: $newNumber');

}