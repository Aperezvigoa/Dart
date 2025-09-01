import 'dart:async';

void main() {

  final streamController = StreamController();

  // We define how our stream should work
  streamController.stream.listen(
    (data) => print('Running $data'),
    // Handle the error if something went wrong
    onError: (err) => print(err),
    // If we want to cancel the stream when we recieve an error we use:
    cancelOnError: true,

    onDone: () => print('Stream closed successfully')
    );

  // We pass data to our stream, this is asynchronous, and the stream will run the listen
  streamController.sink.add('Apollo 11 data');
  streamController.sink.add('Apollo 12 data');

  // Running an error
  streamController.sink.addError('Something went wrong');

  // This wont be executed, cancelOnError: true
  streamController.sink.add('Apollo 13 data');


  // Closing the stream
  streamController.sink.close();

  // We cannot add data when our stream is closed
  // streamController.sink.add('Apollo 14 data');

  print('End of main');
}