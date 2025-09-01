void main() {

  Future<String> timeout = Future.delayed(
    Duration(seconds: 3),
    () => throw 'Something went wrong'
  );

  timeout.then(print).catchError((err) => print(err));

  print('End of main');

}