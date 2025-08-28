import 'dart:io';

void main() {

  for (int i = 0; i < 10; i++) {
    print('Iteration: ${i + 1}');
  };

  stdout.writeln('Enter a number to get it multplication table:');
  final int number = int.parse(stdin.readLineSync() ?? '1');

  for (int i = 1; i <= 10; i++) {
    print('$number * $i: ${number * i}');
  }

}