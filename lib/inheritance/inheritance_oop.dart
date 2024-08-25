// sample diagram
//
//          Parent(Base, Super & Parent Class)
//                  ||
//                  ||
//                  ||
//          Child(sub, derived, child class)
//                  ||
//                  ||
//                  ||
//          Child(sub, derived, child class)



void main() {
  Student student = Student();


  student.name = 'Mobasshira Soha';
  student.age = 19;
  student.regNumber = '1103029';
  student.sem = 2;

  student.displayInfo();
  student.displayStudentInfo();




}


// Person is a generic class
class Person {
  String? name;
  int? age;

  void displayInfo() {
    print('Name : $name');
    print('Age : $age');
  }

}


// Child class
class Student extends Person{
  String? regNumber;
  int? sem;

  void displayStudentInfo() {
    print('Registration number : $regNumber');
    print('Semester : $sem');
  }
}


// =====================  Simple inheritance ==================