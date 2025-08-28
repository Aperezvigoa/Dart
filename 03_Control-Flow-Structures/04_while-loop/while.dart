import 'dart:io';

void main() {

  int number = 1;

  while (number < 10) {
    print('number is still not equal to ten -> $number');
    number++;
  }

  print('Number out of the while loop: $number');

  String stop = 'n';

  while (stop == 'n') {
    stdout.writeln('Do you want to stop the loop? y/n');
    stop = stdin.readLineSync() ?? 'n';
  }

  print('Loop ended!');
}