import 'dart:io';

void main() {

  stdout.writeln('Please, enter your age.');
  final String? ageStr = stdin.readLineSync() ?? '0';

  final int userAge = int.parse(ageStr!);

  if (userAge >= 18) {
    print('You are $userAge years old, so you can come to the party');
  } else {
    print('Sorry, you are too young to this party.');
  };

  stdout.writeln('Please, enter your age again');
  final int age = int.parse(stdin.readLineSync() ?? '0') ;

  if (age >= 21) {
    print('You are a citizen');
  } else if (age >= 18 && age <=20) {
    print('You are an adult');
  } else {
    print('You are a kid or a teenager.');
  }
}