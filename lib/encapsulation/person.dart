// Encapsulation's beauty of use is getter and setter

class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get name => _name;
  int get age => _age;


  set setName (String newName) {
    _name = newName;
  }

  set setAge (int newAge){
    if( newAge > 0 ) {
      _age = newAge;
    }
  }


  void display() {
    print('Name : $_name,  Age : $_age');
  }


}