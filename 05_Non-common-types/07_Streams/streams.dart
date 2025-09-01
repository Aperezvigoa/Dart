import 'dart:async';

void main() {

  final streamController = StreamController();

  // We define how our stream should work
  streamController.stream.listen((data) => print('Running $data'));

  // We pass data to our stream, this is asynchronous
  streamController.sink.add('Apollo 11 data');

  print('End of main');
}