import 'order.dart';
import 'oven.dart';

class Pizzeria {

  final List<Order> queue = [];
  final List<Oven> ovens = [
    new Oven(),
    new Oven(),
    new Oven()
  ];
  
  static final Pizzeria _singleton = new Pizzeria._internal();

  factory Pizzeria() {
    return _singleton;
  }

  Pizzeria._internal();

}