void main() {
  DateTime now = DateTime(2024, 08, 13);

  print('The time is : $now');

  var date = returnDayMinute(now);

  print('Data of date is : ${date.$1}');
  print('Data of date is : ${date.$2}');

}


(int, int) returnDayMinute (DateTime date) {

  DateTime now = DateTime.now();
  print('The current time is : $now');

  int days = now.difference(date).inDays;
  int hours = now.difference(date).inHours;

  return (days, hours);
}