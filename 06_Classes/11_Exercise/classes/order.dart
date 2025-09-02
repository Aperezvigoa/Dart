

import 'customer.dart';
import 'pizza.dart';
import '../enums/pizzaState.dart';

class Order {
  late final int orderID;
  late final Customer customer;
  late final List<Pizza> pizzaList;
  pizzaState state = pizzaState.received;
  late final bool? expressOrder;

  factory Order(Customer customer, List<Pizza> pizzaList, bool expressOrder) {
    if (expressOrder) {
      return Order.express(customer, pizzaList);
    } else {
      return Order.standard(customer, pizzaList);
    }
  }

  Order.standard(this.customer, this.pizzaList): orderID = _idGenerator();

  Order.express(
    this.customer, 
    this.pizzaList
  ): orderID = _idGenerator(), expressOrder = true;


  static int Function() _idGenerator = _closure();
  
  static int Function() _closure() {
    int i = 0;
    return () => i+=1;
  }

}