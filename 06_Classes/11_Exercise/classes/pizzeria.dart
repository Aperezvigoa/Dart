import 'order.dart';

class Pizzeria {

  late final List<Order> queue;
  late final int totalOvens;
  
  static final Pizzeria _singleton = new Pizzeria._internal();

  factory Pizzeria() {
    return _singleton;
  }

  Pizzeria._internal();

}