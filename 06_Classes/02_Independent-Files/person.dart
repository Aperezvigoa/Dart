class Person {

  // Properties
  String? name;
  int? age;
  String? bio;

  // Get & Set

  // Builders

  // Methods
  @override
  String toString() {
    return 'name: ${this.name}\nage: ${this.age}\nbio: ${this.bio}';
  }

}