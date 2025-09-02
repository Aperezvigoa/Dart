// Simple class

class Tools {

  // static is used if we want to access to a property or method without instanciate the object
  // Now, if we instanciate an object, we cannot access to this list, because this atribute is
  // part of the class, not of the object
  static List<String> toolsList = ['Hammer', 'American Key', 'Protection Glasses'];


  // Static Method
  static void printTools() {
    toolsList.forEach(print);
  }
}

void main() {

  final Tools tools1 = new Tools();
  // tools1.toolsList.forEach(print); tools1 cannot access the list

  Tools.toolsList.forEach(print);

  Tools.toolsList.add('Metal'); // This is correct.

  Tools.toolsList.forEach(print);

  print('=============='); // Just a separator

  Tools.printTools();
}