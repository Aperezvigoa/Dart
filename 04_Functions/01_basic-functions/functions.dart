void main() {

  sayHi('Cheddar');
  
  final String name = 'Github';
  sayHi(name);

  final String greets = thanks('Alex');
  print(greets);

}

void sayHi(String name) {
  print('Hi $name!');
}

String thanks(name) {
  return 'Thank you for your help $name!';
}