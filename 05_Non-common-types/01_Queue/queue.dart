import 'dart:collection';

void main() {

  Queue cola = new Queue();
  cola.add([1,1,2,2,3,3,4,5,6,6,9,8,7,8,9,10]);

  print('Queue cola: $cola');

  Iterator i = cola.iterator;

  while (i.moveNext()) {
    print(i.current);
  }

}