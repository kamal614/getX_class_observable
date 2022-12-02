import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rx_class_getx/controller.dart';
import 'package:rx_class_getx/student_class.dart';

class Home extends StatelessWidget {
  Home({super.key});
  //Only making the variable obserable
  // var stu = Student();

  //Making the whole class observable
  // final stu = Student(studentName: "kamal", age: 22);

  //Creating the ibject of the controller class so that we can access that.
  KamalController kamalController = Get.put(KamalController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Text(
                    "Name of student is ${kamalController.stu.studentName}");
              },
            ),
            ElevatedButton(
                onPressed: () {
                  kamalController.convertToUpperCase();
                },
                child: const Text("To UpperCase"))
          ],
        ),
      ),
    );
  }
}
