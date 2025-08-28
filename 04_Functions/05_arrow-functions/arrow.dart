void main() {

  final int a = 5, b = 10;
  final int result = addNums(a, b);

  print('The result of $a + $b is $result');

  final List<int> numbers = [1,1,1,2,3,4,5,5,6,6,7,8,9,9,5,4,7];
  print('List numbers: $numbers');

  final Iterable<int> evenNumbers = numbers.where((int n) => n % 2 == 0);
  print('Even unique numbers: ${evenNumbers.toSet()}');

}

int addNums(int a, int b) => a + b;