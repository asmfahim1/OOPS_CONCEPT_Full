

void main() {

  Car car = Car(4, 'TOYOTA', 'Camry', 2020);

  print('Car Information');
  car.display();
  print('=========== rent display =========');
  print('Car rent for 5 days : ${car.calculateRentalPrice(5)}');

  Bike bike = Bike('TOYOTA', 'Royal Enfield', 2020, true);

  print('Bike Information');
  car.display();
  print('=========== bike rent display =========');
  print('Bike rent for 2 days : ${car.calculateRentalPrice(2)} Tk.');

}


class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void display() {
    print('Brand : $brand');
    print('Model : $model');
    print('Year : $year');
  }

  double calculateRentalPrice (int days) {
    return days * 50.0;
  }

}


class Car extends Vehicle {
  int door;
  Car(this.door, super.brand, super.model, super.year);

  @override
  double calculateRentalPrice(int days) {
    // TODO: implement calculateRentalPrice
    return super.calculateRentalPrice(days) + (20 * door);
  }


}


class Bike extends Vehicle {
  bool hasCarrier;

  Bike(super.brand, super.model, super.year, this.hasCarrier);


  @override
  void display() {
    // TODO: implement display
    super.display();
    print('Has Carrier : $hasCarrier ? Yes : NO');
  }

  @override
  double calculateRentalPrice(int days) {
    // TODO: implement calculateRentalPrice
    return super.calculateRentalPrice(days) - (hasCarrier ? 0.5 : 0.0);
  }

}