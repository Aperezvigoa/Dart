void main() {

  final bool isActive = true;

  print('Is Active? $isActive');

  final int userAge = 16;
  
  final bool canDrinkBeer = userAge >= 18;

  if (canDrinkBeer) {
    print('The user can drink beer');
  } else {
    print('The user is too young to take a beer, sorry.');
  }

  print(!canDrinkBeer);
}