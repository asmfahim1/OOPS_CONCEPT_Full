void main() {

  Car car = Car();

  print('=========== Car =============');
  car.start();
  car.move();
  car.stop();

  Truck truck = Truck();

  print('=========== Truc =============');
  truck.start();
  truck.move();
  truck.stop();

}


abstract class Vehicle {

  void start();
  void move();
  void stop();

}

class Car extends Vehicle {

  @override
  void move() {
    // TODO: implement move
    print('Car is Moving');
  }

  @override
  void start() {
    // TODO: implement start
    print('Car is Started');
  }

  @override
  void stop() {
    // TODO: implement stop
    print('Car is Stopped');
  }

}

class Truck extends Vehicle {
  @override
  void move() {
    // TODO: implement move
    print('Truck is Moving');
  }

  @override
  void start() {
    // TODO: implement start
    print('Truck is Started');
  }

  @override
  void stop() {
    // TODO: implement stop
    print('Truck is Stopped');
  }

}