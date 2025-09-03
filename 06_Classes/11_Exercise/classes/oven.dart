import 'order.dart';
import 'pizza.dart';

class Oven {

  late bool isWorking;

  Oven() {
    this.isWorking = false;
  }

  Future<void> bakePizzas(Order order) async {
    for (Pizza pizza in order.pizzaList) {
      print('${order.customer.name} your pizza is baking!');
      final String cook = await _waitForBake(pizza.timeToBake);
      print(cook);
    }
    order.pizzaList.clear();
  }

  Future<String> _waitForBake(int time) {
    return Future.delayed(Duration(seconds: time), () {
      return 'Baked in $time seconds!\n';
    });
  }

}