import 'package:oop_concepts/encapsulation/person.dart';

void main() {

  Person person = Person('ASM FAhim', 27);

  person.display();

  print('Name : ${person.name}');
  print('Age : ${person.age}');


  person.setName = 'Mobasshira Soha';
  person.setAge = 20;

  print('======= Display Information ============');
  person.display();


}


