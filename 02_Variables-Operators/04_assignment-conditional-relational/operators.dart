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

  // Relational Operators
  // All relational operators returns boolean values
  // > | < | >= | <= | == | !=

  final String name1 = 'Alex';
  final String name2 = 'Charlie';

  print('$name1 == $name2: ${name1 == name2}');
  print('$name1 != $name2: ${name1 != name2}');

  final int number1 = 50;
  final int number2 = 32;

  print('Is $number1 > $number2: ${number1 > number2}');
  print('Is $number1 < $number2: ${number1 < number2}');
  print('Is $number1 >= $number2: ${number1 >= number2}');
  print('Is $number1 <= $number2: ${number1 <= number2}');

  // Type Operator
  final int i = 10;
  final String j = '100';

  print('is $i an int? ${i is int}');
  print('is $j an int? ${j is int}');

}