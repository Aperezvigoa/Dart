class Rectangle {

  late final int base;
  late final int height;
  late final int area;
  late final String type;

  /*
  Rectangle(this.base, this.height) {
    this.area = this.base * this.height;
    this.type = this.area == this.base ? 'Square' : 'Rectangle';
  }
  */

  // A builder factory only returns instances
  factory Rectangle(int base, int height) {
    if ( base == height ) {
      return Rectangle.square(base);
    } else {
      return Rectangle.rectangle(base, height);
    }
  }

  Rectangle.square(int base) {
    this.base = base;
    this.height = base;
    this.area = this.base * this.height;
    this.type = 'Square';
  }

  Rectangle.rectangle(int base, int height) {
    this.base = base;
    this.height = height;
    this.area = this.base * this.height;
    this.type = 'Rectangle';
  }

  @override
  String toString() {
    return 'base: ${this.base}, height: ${this.height}, area: ${this.area}, type: ${this.type}';
  }
}