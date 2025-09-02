import '../enums/pizzaSize.dart';
import '../enums/pizzaType.dart';
import 'dart:math';

final List<PizzaSize> pizzaSizes = [PizzaSize.small, PizzaSize.medium, PizzaSize.big, PizzaSize.familiar];
final List<String> pizzaIngredients = [
  "Cheese",
  "Tomato Sauce",
  "Pepperoni",
  "Mushrooms",
  "Onions",
  "Bell Peppers",
  "Olives",
  "Bacon",
  "Ham",
  "Pineapple",
  "Spinach",
  "Garlic",
  "Sausage",
  "Chicken",
  "Tomatoes"
];

final List<PizzaType> pizzaTypes = [
  PizzaType.Cuatro_Quesos,
  PizzaType.Hawaiana,
  PizzaType.Margarita,
  PizzaType.Pepperoni,
  PizzaType.Vegetariana
];


PizzaSize getPizzaSize() {
  final int i = Random().nextInt(pizzaSizes.length);
  return pizzaSizes[i];
}

PizzaType getPizzaType() {
  final int i = Random().nextInt(pizzaTypes.length);
  return pizzaTypes[i];
}

List<String> getExtra() {
  final int quantity = Random().nextInt(10);
  final List<String> extras = [];
  for (int i = 0; i <= quantity; i++) {
    final int randomIndex = Random().nextInt(pizzaIngredients.length);
    extras.add(pizzaIngredients[randomIndex]);
  }
  return extras;
}