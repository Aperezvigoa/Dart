import 'dart:math';

import '../enums/customerType.dart';

List<String> americanNames = [
  "James",
  "John",
  "Robert",
  "Michael",
  "William",
  "David",
  "Richard",
  "Joseph",
  "Thomas",
  "Charles",
  "Mary",
  "Patricia",
  "Jennifer",
  "Linda",
  "Elizabeth",
  "Barbara",
  "Susan",
  "Jessica",
  "Sarah",
  "Karen"
];

String getCustomerName() {
  final int i = Random().nextInt(americanNames.length);
  return americanNames[i];
}

customerType getCustomerType() {
  final int i = Random().nextInt(3);
  switch (i) {
    case 0:
      return customerType.regular;
    case 1:
      return customerType.vip;
    default:
      return customerType.premium;
  }
}
