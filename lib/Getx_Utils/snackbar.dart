import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarScreen extends StatefulWidget {
  const SnackbarScreen({super.key});

  @override
  State<SnackbarScreen> createState() => _SnackbarScreenState();
}

class _SnackbarScreenState extends State<SnackbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Using Getx"),
      ),

      body: Column(),

      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Get.snackbar('Yash Patil', 'Testing Of SnackBar',
              showProgressIndicator: true,
              // colorText: Colors.purpleAccent,
              // animationDuration: Duration(seconds: 5),
              // snackPosition: SnackPosition.BOTTOM,
              snackPosition: SnackPosition.TOP,
              // icon: Icon(Icons.add),
            );
      },
        child: Icon(Icons.add),
      ),
    );
  }
}
