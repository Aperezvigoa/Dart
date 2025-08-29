import 'dart:io';

void main() async {

  String text = await simpleTemp();
  print(text);

  print("-----------------");
  print('Loading...');
  print(await download());

  print("------------------");
  final userName = getName();
  await userName.then((name) async {
    await Future.delayed(Duration(seconds: 2), () => print(name));
  });

  print("------------------");
  final userAge = getAge();
  await userAge.then((age) async {
    await Future.delayed(Duration(seconds: 1), () => print(age));
  });

  print('End of main');
}

Future<String> simpleTemp() async {

  Future<String> text = Future.delayed(Duration(seconds: 3), () {
    return 'Time completed';
  });

   return text;
}

Future<String> download() async => Future.delayed(Duration(seconds: 2), () => 'File downloaded.');

Future<String?> getName() async {

  stdout.writeln('Enter your name:');
  Future<String?> name = Future(() => stdin.readLineSync() );
  return name;
}

Future<int?> getAge() async {

  stdout.writeln('Enter your age:');
  return int.parse(stdin.readLineSync() ?? '0');

}