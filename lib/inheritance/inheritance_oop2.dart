void main() {

  MacBook macBook = MacBook();

  macBook.displayLaptopInfo();

  ASUS asus = ASUS('ASUS', 200000, 'ZENBOOK');
  asus.displayASUS();

}


class Laptop {

  String brand;
  double price;

  Laptop(this.brand, this.price) {
    print('laptop constructor');
  }


  void displayLaptopInfo () {
    print('Brand : $brand, Price : $price\n');
  }

}


class MacBook extends Laptop{

  // In here Super such as Laptop class constructor will call first and then Macbook constructor will call after that

  MacBook() : super('MAC', 100000);


}


class ASUS extends Laptop{
  String model;

  // In here Super such as Laptop class constructor will call first and then Macbook constructor will call after that

  ASUS(super.brand, super.price, this.model);

  void displayASUS() {
    super.displayLaptopInfo();
    print('Model : $model');
  }


}