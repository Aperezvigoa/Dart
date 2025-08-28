void main() {

  for (int i = 0; i < 10; i++) {

    if (i == 5) {
      print('continue executed.');
      continue;
    } else if ( i == 8) {
      print('breaking at $i');
      break;
    }

    print(i);
  }

  print('Loop finished');

}