void main() {

  Person person = Person('abc@gmail.com', '123234');
  person.displayPersonInfo();

}


class Person with Logger, Validation {
  String email, password;

  Person(this.email, this.password);

  // i donot need to do that
  // void displayPersonInfo() {
  //   print('Person email : $email, password : $password \n');
  // }

  // instead of doing above we can write
  void displayPersonInfo() {
    if(validatePassword(password) != null) {
      log(validatePassword(password).toString());
    } else {
      log('Person email : $email, password : $password \n');
    }

  }

}


// Mixin allows you to share code between classes
mixin Logger {
  void log(String message){
    print('Mixin message is : $message');
  }
}


// to avoid replication and duplication in code we use mixin. It helps us reduce duplication of code
mixin Validation {
  String? validatePassword (String value) {
    if(value.isEmpty) {
      return 'Password can not be empty';
    }

    if(value.length < 6) {
      return 'Password can not be less than 6 characters';
    }

    return null;
  }
}