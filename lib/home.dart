import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rx_class_getx/student_class.dart';

class Home extends StatelessWidget {
  Home({super.key});
  var stu = Student();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Text("Name of student is ${stu.studentName.value}");
              },
            ),
            ElevatedButton(
                onPressed: () {
                  stu.studentName.value = stu.studentName.value.toUpperCase();
                },
                child: const Text("To UpperCase"))
          ],
        ),
      ),
    );
  }
}
