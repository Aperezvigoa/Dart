class Bee {

  String? name;
  bool? isBeautiful;
  String? _favouriteFlower;
  bool? _lovesTheQueen;
  int? _workedHours;

  String get favouriteFlower {
    return _favouriteFlower ?? '${this.name} loves all flowers';
  }

  void set favouriteFlower(String newFlower) {
    _favouriteFlower = newFlower.trim();
  }

  bool get lovesTheQueen {
    return _lovesTheQueen ?? true;
  }

  void set lovesTheQueen(bool status) {
    _lovesTheQueen = status;
  }

  int get workedHours {
    return _workedHours ?? 40;
  }

  void set workedHours(int hours) {
    if(hours >= 0) {
      _workedHours = hours;
    }
  }

  // Builder

  Bee(String name, bool isBeautiful) {
    this.name = name;
    this.isBeautiful = isBeautiful;
  }

  // Multiple Builders
  Bee.beatifulBee(this.name) {
    this.isBeautiful = true;
  }


  void fly() {
    print('${this.name} is flying');
  }

  void makeHoney() {
    print('${this.name} made 10ml of honey');
  }

}