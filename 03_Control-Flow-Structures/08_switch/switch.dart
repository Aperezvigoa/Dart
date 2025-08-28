import 'dart:math';

void main() {

  int randomNum = Random().nextInt(5) + 1;
  
  switch (randomNum) {

    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    default:
      print('Friday!');

  }
}