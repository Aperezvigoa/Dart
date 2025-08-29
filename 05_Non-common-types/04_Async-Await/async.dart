import 'dart:io';

void main() async {

  final String filePath = Directory.current.path + '\\03_future\\assets\\people.txt';
  
  readFile(filePath);
  
  // readFile(filePath).then(print);

  String text = await readFile(filePath);
  // Wait to get the readFile return and then continue

  print(text);

  print('End of main');
}

/*
Future<String> readFile( String path ) {

  File file = new File(path);

  return file.readAsString();

}
*/

// With async, Dart tramsform tje return type to a Future.
Future<String> readFile( String path ) async {
  File file = new File(path);

  return file.readAsString();

}