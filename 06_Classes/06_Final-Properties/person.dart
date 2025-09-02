class Person {
  String? name;
  int? age;
  late final int? birthYear;
  bool? _isWorking;
  double? _salary;
  List<String>? _stackTech;

  bool get isWorking {
    return _isWorking ?? false;
  }
  void set isWorking(bool state) {
    this._isWorking = state;
  }

  double get salary {
    return _salary ?? 0.0;
  }
  void set salary(double quantity) {
    this._salary = quantity;
  }

  List<String> get stackTech {
    return _stackTech ?? ['no tech'];
  }
  void set stackTech(List<String> techs) {
    _stackTech = List.from(techs);
  }

  Person(String name, int age, int birthYear) {
    this.name = name;
    this.age = age;
    this.birthYear = birthYear;
  }

  Person.justName(this.name) {
    this.age = 18;
  }
}