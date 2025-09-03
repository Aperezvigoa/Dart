class Vehicle {

  bool power = false;
  

  void powerOn() {
    power = true;
    print('The vehicle is power on.');
  } 

  void powerOff() {
    power = false;
    print('The vehicle is power off.');
  } 
}

class Car extends Vehicle {

  late double km;

  @override
  void powerOn() {
    power = true;
    print('The car engine is on.');
  }
}

void main() {
  Car car = new Car();
  car.powerOn();
  car.powerOff();
}