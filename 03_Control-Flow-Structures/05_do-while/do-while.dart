import 'dart:io';

void main() {

  // Do while executes at least once before it verifies the condition
  
  String stopLoop = 'y';

  do {

    stdout.writeln('Do you want to stop the loop? y/n');
    stopLoop = stdin.readLineSync() ?? 'n';

  } while(stopLoop == 'n');

  print('Loop finished.');
}