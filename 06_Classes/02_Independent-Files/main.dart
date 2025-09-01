import 'person.dart';

void main() {
  Person jon = new Person();
  jon.name = 'Jon Doe';
  jon.age = 33;
  jon.bio = 'My name is always used as example :(';

  print(jon.toString());
}