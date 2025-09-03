import '../classes/order.dart';
import '../classes/customer.dart';
import '../classes/pizza.dart';
import '../data/pizzaData.dart';
import '../enums/pizzaSize.dart';
import 'dart:math';
import '../enums/pizzaType.dart';

Order generateOrder(Customer customer, List<Pizza> pizzaList, bool expressOrder) {
  return new Order(customer, pizzaList, expressOrder);
}

Pizza generatePizza() {
  int firstType = Random().nextInt(2);
  final PizzaSize size = getPizzaSize();
  final PizzaType type = getPizzaType();

  switch (firstType) {
    case 0:
      return Pizza(type, size);
    default:
      final List<String> extras = getExtra();
      return Pizza(type, size, extra: extras);
  }
}

void printOrderInfo(Order order) {
print('''
Customer    : ${order.customer.name}
Order ID    : ${order.orderID}
Time toBake : ${order.pizzaList[0].timeToBake}
Pizza       : ${order.pizzaList[0].type}
Size        : ${order.pizzaList[0].size}
Price       : \$${order.pizzaList[0].price}
Extras      : \$${order.pizzaList[0].extra}
''');
}