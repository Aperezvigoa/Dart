class Duck {

  // Properties
  String? name;
  int? age;
  bool? canFly;
  String? color;
  String? _favFood; // _ means private


  // Get & Set
  // Builders

  // Methods
  void sayQuack() {
    print('Quack Quack 🦆');
  }

  String getFavFood() {
    return this._favFood ?? 'Fish';
  }
}