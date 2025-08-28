void main() {

  outerloop:
  for (int i = 0; i < 5; i++) {

    print('value of i: $i');

    for (int j = 0; j < 5; j++) {

      print('value of j: $j');

      if (j == 2) {
        break outerloop;
      }
    }

  }

}