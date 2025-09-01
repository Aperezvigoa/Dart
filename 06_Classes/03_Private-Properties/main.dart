import 'duck.dart';

void main() {

  Duck bill = new Duck();
  bill.name = 'Bill';

  // bill._favFood = 'Fish'; CANNOT ACCESS BECAUSE IT'S PRIVATE

  bill.sayQuack();
  print(bill.getFavFood());
}