import 'package:get/get.dart';

class Student {
  //Only making the variable obserable
  var studentName = "kamal".obs;
  final age = RxInt(22);

  //Making the whole class observable
  // var studentName;
  // var age;
  // Student({this.studentName, this.age});
}
