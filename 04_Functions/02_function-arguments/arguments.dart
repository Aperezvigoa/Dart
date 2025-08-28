void main() {

  sayHi('Alex');

  // Optional arguments
  greeting();
  greeting(name:'Cheddar');

  recieveColor('Alex', 'Orange');

  printUserCity('Alex', city: 'Madrid');
  printUserCity('Jon'); // City has a default value, so it's optional
}

// Simple function that prints a message
void sayHi(String name) {
  print('Hello, $name. Nice to meet you!');
}

// A function with optional arguments
void greeting({String? name}) {
  final greetName = name ?? '';
  print('Congratulations $greetName!');
}

// More than one argument
void recieveColor(String name, String color) {
  print('Wow $name! the color $color is so cool!');
}

// Default arguments
void printUserCity(String name, {String city = 'New York'}) {
  print('The user $name lives in $city');
}