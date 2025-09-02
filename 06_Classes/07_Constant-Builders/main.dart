import 'location.dart';

void main() {

  final sanFracisco1 = new Location(18.2323, 39.9000);
  final sanFracisco2 = new Location(18.2323, 39.9000);
  final sanFracisco3 = new Location(18.2323, 39.9000);

  print(sanFracisco1 == sanFracisco2); // false, is not the same.
  print(sanFracisco2 == sanFracisco3); // false

  const sanFracisco4 = const Location(18.2323, 39.9001);
  const sanFracisco5 = const Location(18.2323, 39.9000);
  const sanFracisco6 = const Location(18.2323, 39.9000);

  print(sanFracisco4 == sanFracisco5); // false
  print(sanFracisco5 == sanFracisco6); // true

}