import 'package:get/get.dart';
import 'package:rx_class_getx/student_class.dart';

class KamalController extends GetxController {
  var stu = Student();

  void convertToUpperCase() {
    stu.studentName.value = stu.studentName.value.toUpperCase();
  }
}
