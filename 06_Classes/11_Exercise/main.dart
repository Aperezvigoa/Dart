import 'classes/customer.dart';
import 'classes/pizzeria.dart';
import 'enums/customerType.dart';
import 'classes/pizza.dart';
import 'data/pizzaData.dart';
import 'enums/pizzaSize.dart';
import 'classes/order.dart';
import 'dart:math';

import 'enums/pizzaType.dart';

void main() {

  final Pizzeria mammaMia = new Pizzeria();
  mammaMia.totalOvens = 1;

  // TEST
  final List<String> customerNames = ['Jon', 'Mary', 'Sophie', 'Pete'];
  final List<Customer> customers = [];

  customerNames.forEach((name) {
    print(name);
    final Customer cstmr = new Customer(name, customerType.regular);
    final Order cstmrOrder = generateOrder(cstmr, [generatePizza()], false);
    cstmr.addOrder(cstmrOrder);
    customers.add(cstmr);
  });

  customers.forEach((cust) {

    print('------------------');
    print('Customer name: ${cust.name}');
    print('Customer type: ${cust.type}');
    print('Order:');
    cust.orders.forEach((ord) {
      print('Order ID: ${ord.orderID}');
      print('Pizza: ${ord.pizzaList[0].type}');
      print('Price: ${ord.pizzaList[0].price}');
      print('Size: ${ord.pizzaList[0].size}');
      print('Time to bake: ${ord.pizzaList[0].timeToBake} seconds');
    });
    print('');

  });

  bakePizzas(customers);
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

Order generateOrder(Customer customer, List<Pizza> pizzaList, bool expressOrder) {
  return new Order(customer, pizzaList, expressOrder);
}

void bakePizzas(List<Customer> customers) async {
  for (Customer customer in customers) {
    for (Order order in customer.orders) {
      await Future.delayed(Duration(seconds: order.pizzaList[0].timeToBake),() {
        print('${order.pizzaList[0].type} baked in ${order.pizzaList[0].timeToBake} seconds.');
      });
    };
  }
}