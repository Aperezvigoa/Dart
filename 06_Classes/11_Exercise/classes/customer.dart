import '../enums/customerType.dart';
import 'order.dart';

class Customer {
  late final String name;
  late final int _phoneNumber;
  late final String _address;
  late final customerType type;
  final List<Order> _orders = [];

  int get phoneNumber {
    return _phoneNumber;
  }
  set phoneNumber(int number) {
    this._phoneNumber = number;
  }

  String get address {
    return _address;
  }
  set address(String add) {
    this._address = add.trim();
  }

  List<Order> get orders {
    return _orders;
  }

  Customer(String name, customerType type) {
    this.name = name;
    this.type = type;
  }

  Customer.vip(String name) {
    this.name = name;
    this.type = customerType.vip;
  }

  static bool checkPhoneNumber(int number) {

    if (number.toString().trim().length == 9 ) {
      return true;
    } else {
      return false;
    }
  }

  void addOrder(Order order) {
    this._orders.add(order);
  }
}