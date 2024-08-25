void main() {

  // MacBook macBook = MacBook();
  // macBook.turnOn();
  // macBook.turnOff();

  // Dog dog = Dog();
  // dog.sound();
  //
  // Cat cat = Cat();
  // cat.sound();


  // This concept is polymorphism many forms.
  List<Animal> animalList = [Dog(), Cat()];



}



// Laptop class is interface class, concrete class  jodi ami ei class ta abstract class na banaya cincrete class banai,
// tahole onno class theke ei class er method gulo use korte amader implements keyword use kore method override korte hbe

class Laptop {

  void turnOn() {
    print('Laptop turn on');
  }

  // abstract method
  void turnOff() {
    print('Laptop turn off');
  }

}


class MacBook implements Laptop {
  @override
  void turnOff() {
    // TODO: implement turnOff
    print('MacBook turn on');
  }

  @override
  void turnOn() {
    // TODO: implement turnOn
    print('MacBook turn off');
  }

}


// ============  Through Abstract Class ===============

abstract class Animal {

  // Sound method a kono curley braces nai tai ei method k abstract method bola hoy. ar abstract method hole sei method take implement kortei hbe jodi extend kora hoy
  void sound();

  void eat(){
    print('Animal is eating');
  }

}

class Dog extends Animal {


  // ei j amra override er vitore j super.eat() method call dilam eitake polymorphism o bole.
  @override
  void sound() {
    // TODO: implement sound
    super.eat();
    print('Dog is Barking');
  }

}

class Cat extends Animal {

  // ei j amra override er vitore j super.eat() method call dilam eitake polymorphism o bole.
  @override
  void sound() {
    // TODO: implement sound
    super.eat();
    print('Cat is Meowing');
  }

}

