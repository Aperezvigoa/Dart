import '../enums/pizzaType.dart';
import '../enums/pizzaSize.dart';
import 'dart:math';

class Pizza {

  final PizzaType type;
  final PizzaSize size;
  final List<String> extra;
  late double price;
  late final int timeToBake;

  static const double _pricePerIngredient = 2.99;

  factory Pizza(PizzaType type, PizzaSize size, {List<String>? extra}) {
    if(extra == null) {
      return Pizza.standard(type, size);
    } else {
      return Pizza.custom(type, size, extra);
    }
  }

  Pizza.standard(
    this.type, 
    this.size,
  ): extra = const[] {

    this.price = _basePrice(this.size);
    this.timeToBake = _baseTime(this.size) + Random().nextInt(3);
  }

  Pizza.custom(
    this.type, 
    this.size,
    this.extra
  ) {
    double priceIng = _pricePerIngredient * extra.length;
    this.price = _basePrice(this.size) + priceIng;
    this.timeToBake = _baseTime(this.size) + Random().nextInt(5);
  }

  double _basePrice (PizzaSize size) {
    switch (size) {
      case PizzaSize.small:
        return 9.99;
      case PizzaSize.medium:
        return 12.99;
      case PizzaSize.big:
        return 14.99;  
      case PizzaSize.familiar:
        return 15.99;
    }
  }

  int _baseTime (PizzaSize size) {
    switch (size) {
      case PizzaSize.small:
        return 2;
      case PizzaSize.medium:
        return 4;
      case PizzaSize.big:
        return 6;  
      case PizzaSize.familiar:
        return 8;
    }
  }

}