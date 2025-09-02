import 'bee.dart';

void main() {

  // Using our constructor
  final Bee mrHoney = new Bee('Mr Honey', true);

  /*
  Instead of doing this, we can use a builder.
  mrHoney.name = 'Mr. Honey';
  mrHoney.isBeautiful = true;
  */

  mrHoney.fly();


  final Bee beautyBee = new Bee.beatifulBee('Maya');
  beautyBee.makeHoney();

}