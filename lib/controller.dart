import 'package:get/get.dart';
import 'package:rx_class_getx/student_class.dart';

class KamalController extends GetxController {
  //Only making the variable observeable
  // var stu = Student();
  // void convertToUpperCase() {
  //   stu.studentName.value = stu.studentName.value.toUpperCase();
  // }

  //Making the whole class observeable
  var stu = Student(studentName: "Kamal", age: 22).obs;
  void convertToUpperClass() {
    stu.update((val) {
      val!.studentName = val.studentName.toString().toUpperCase();
    });
  }
}
