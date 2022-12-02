import 'package:get/get.dart';

class Student {
  //Only making the variable observeable
  // var studentName = "kamal".obs;
  // final age = RxInt(22);

  //Making the whole class observeable
  var studentName;
  var age;
  Student({this.studentName, this.age});
}
