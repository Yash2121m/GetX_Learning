import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationUsingGetx3 extends StatefulWidget {
  const NavigationUsingGetx3({super.key});

  @override
  State<NavigationUsingGetx3> createState() => _NavigationUsingGetx3State();
}

class _NavigationUsingGetx3State extends State<NavigationUsingGetx3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Screen 3"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                Get.back();
                Get.back();
              },
              child: Text("Go to First Screen"),
            ),
          ),
        ],
      ),
    );
  }
}
