void main() {


  // Single objet and multiple data types is known as record
  var person = (25, 'ASM FAHIM');

  print('Person age : ${person.$1}');
  print('Person name : ${person.$2}');

  var person2 = (age : 25, name : 'ASM FAHIM');

  print('Person age : ${person2.age}');
  print('Person name : ${person2.name}');


  // ===========  Second ==========
  print('Total Sum is : ${sum(20, 30)}');
  print('Total Subtract is : ${subTract(20, 30)}');

  var arthop = arithmeticOperationWithRecord(30, 25);
  print('The \$ sign is represented the index of which operation should perform : ${arthop.$1}');
  print('The \$ sign is represented the index of which operation should perform : ${arthop.$2}');

  // to make this understandable
  var (summation, subtraction) = arthop;
  print('Summation of the operation : $summation');
  print('Subtraction of the operation : $subtraction');


}


int sum (int x, int y) {
  return x + y ;
}

int subTract (int x, int y) {
  return x - y ;
}

// record
(int, int) arithmeticOperationWithRecord (int x, int y) {
  return ( x+y, x-y ) ;
}


