import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rx_class_getx/controller.dart';

class Home extends StatelessWidget {
  Home({super.key});
  //Only making the variable obserable
  // var stu = Student();

  //Making the whole class observable
  // final stu = Student(studentName: "kamal", age: 22).obs;

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
                    "Name of student is ${kamalController.stu.value.studentName}");
              },
            ),
            ElevatedButton(
                onPressed: () {
                  // kamalController.convertToUpperCase();
                  kamalController.convertToUpperClass();
                },
                child: const Text("To UpperCase"))
          ],
        ),
      ),
    );
  }
}
