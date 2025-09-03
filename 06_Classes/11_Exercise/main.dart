import 'dart:async';

import 'classes/customer.dart';
import 'classes/pizzeria.dart';
import 'classes/pizza.dart';
import 'classes/order.dart';
import 'data/customerData.dart';
import 'data/orderGen.dart';

void main() async {

  final Pizzeria mammaMia = new Pizzeria();

  StreamController<Order> strCustomer = StreamController();
  

  strCustomer.stream.listen(
    (order) async {
      mammaMia.queue.add(order);
      print('\n⏰ NEW ORDER RECIEVED ⏰\n');
      if (mammaMia.queue.length >= 1) await processQueue(mammaMia, order);
    },

    onError: (error) => print('The customer get poisoned! $error'),
    cancelOnError: true,
    onDone: () => print('No more customer, good for today!')
  );

  int count = 0;
  Timer customerGen = new Timer.periodic(Duration(seconds: 3), (generator) {
    count++;

    final Customer customer = new Customer(getCustomerName(), getCustomerType());
    final Pizza selectedPizza = generatePizza();
    final Order generatedOrder = generateOrder(customer, [selectedPizza], false);

    strCustomer.add(generatedOrder);

    if(count >= 10) {
      generator.cancel();
      strCustomer.close();
    }
  });

}

bool _processingQueue = false;

Future<void> processQueue(Pizzeria mammaMia, Order order) async {

  if (_processingQueue) return;
  _processingQueue = true;

  while(mammaMia.queue.isNotEmpty) {
    final Order actOrder = mammaMia.queue.first;
    printOrderInfo(actOrder);
    await mammaMia.ovens[0].bakePizzas(actOrder);
    mammaMia.queue.removeAt(0);
  }
  _processingQueue = false;
}