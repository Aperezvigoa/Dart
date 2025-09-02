class Bear {
    
  String? name;
  String? color;
  bool? lovesHoney;
  String? _hideSpot;

  // Get & Set
  String get hideSpot {
    return _hideSpot ?? 'There is not a hide spot.';
  }

  void set hideSpot(String newSpot) {
    if (newSpot.trim().length > 1) {
      this._hideSpot = newSpot;
    }
  }

  // Builders

  // Methods
  void goToSleep() {
    print('Zzz');
  }

  void getFood() {
    print('${this.name} has get some food');
  }
}