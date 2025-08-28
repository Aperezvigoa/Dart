void main() {

  // Using var
  var varNumber = 10;

  // Using final
  final int favNumber = 20;

  // Using const
  const int birthYear = 2001;

  // Trying to change the values
  
  varNumber = 19;
  print('Var Number was modified to $varNumber');

  // favNumber = 17;
  print('Final number can only be set once... $favNumber');

  // birthYear = 1999;
  print('Const is a constant value, can\'t be modified. $birthYear');

  // In Dart, a const value is determined and stored in memory during compile time,
  // Meaning it cannot change at runtime.

  // A final variable can only be assigned once. Unlike const, its value is determined
  // at runtime, not at compile time. Final its lighter.

  final List<String> peopleFinal = ['Jon Doe', 'Amanda Smith', 'Mike Guy'];
  const List<String> peopleConst = ['Jessica Jones', 'Jane Ada', 'Luke Welt'];

  peopleFinal.add('Greg Jackson');
  // peopleConst.add('Mark Smith'); We cannot modify a const list.

  print('People Final List: $peopleFinal');
  print('People Const List: $peopleConst');

}