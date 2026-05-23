import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/Getx_Utils/Navigation_using_Getx/navigation_getx_3.dart';

class NavigationUsingGetx2 extends StatefulWidget {
  const NavigationUsingGetx2({super.key});

  @override
  State<NavigationUsingGetx2> createState() => _NavigationUsingGetx2State();
}

class _NavigationUsingGetx2State extends State<NavigationUsingGetx2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Screen 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                // Get.to(NavigationUsingGetx3());
                Get.toNamed('/screen2');
              },
              child: Text("Go to Previous Screen"),
            ),
          ),
        ],
      ),
    );
  }
}
