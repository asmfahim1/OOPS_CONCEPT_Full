void main() {
  Person person = Person('ASM FAHIM', Gender.OTHER, AdminPanel.STAFF);

  //Gender gender = Gender.FEMALE;
  print('Person role is : ${person.adminPanel}');
  print('Person role is : ${person.adminPanel.name}');

  switch (person.gender) {
    case Gender.MALE:
      print('Person is Male');

    case Gender.FEMALE:
      print('Person is Female');

    case Gender.OTHER:
      print('Person is something else');

    default:
      print('No gender is detected');
  }
}

// Enum is necessary

enum Gender { MALE, FEMALE, OTHER }

enum Status { LOADING, ERROR, COMPLETED }

enum Religion { ISLAM, CHRISTAN, HINDU, BIBLE }

enum AdminPanel {USER, ADMIN, SUPERADMIN, EMPLOYEE, STAFF}

class Person {
  String name;
  Gender gender;
  AdminPanel adminPanel;
  Person(this.name, this.gender, this.adminPanel);
}
