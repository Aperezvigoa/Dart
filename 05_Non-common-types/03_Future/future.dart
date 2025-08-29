import 'dart:io';

void main() {

  Future<String> timeout = Future.delayed( Duration(seconds: 3), () {
    print('Timeout finished after 3 seconds');
    return 'Returned a String';
  } );
  
  timeout.then((value) => print(value));

  print('This will be printed first');

  // Little exercise, reading a file with Future
  File file = new File( Directory.current.path + '\\03_Future\\assets\\people.txt');
  
  Future<String> textOnFile = file.readAsString();

  textOnFile.then( (data) => print(data) );
}