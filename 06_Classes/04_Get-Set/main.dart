import 'bear.dart';

void main() {

  Bear yogi = new Bear();
  yogi.name = 'Yogi The Bear';
  yogi.color = 'Brown';
  yogi.lovesHoney = true;
  //yogi._hideSpot -> This does NOT work, because its private.

  print(yogi.hideSpot); // We are using our getter to get the _hideSpot

  // Using the setter to set a new value to _hideSpot
  yogi.hideSpot = 'Baseball Stadium';

  print(yogi.hideSpot);

}