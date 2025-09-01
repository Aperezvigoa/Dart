void main() {

  Person alex = new Person();
  alex.name = 'Alex';
  alex.age = 23;
  alex.bio = 'Im a Dart developer';
  
  //print(""" 
  //${alex.name}
  //${alex.age}
  //${alex.bio}
  //""");

  print(alex.toString());

}

class Person {

  // Properties
  String? name;
  int? age;
  String? bio;

  // Get & Sets

  // Builders

  // Methods
  @override
  String toString() {
    return """
    ${this.name}
    ${this.age}
    ${this.bio}
    """;
  }
}