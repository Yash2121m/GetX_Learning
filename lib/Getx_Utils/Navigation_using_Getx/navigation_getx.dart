import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navigation_getx_2.dart';

class NavigationUsingGetx extends StatefulWidget {
  const NavigationUsingGetx({super.key});

  @override
  State<NavigationUsingGetx> createState() => _NavigationUsingGetxState();
}

class _NavigationUsingGetxState extends State<NavigationUsingGetx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Screen 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: (){
                  // Get.to(NavigationUsingGetx2());
                  Get.toNamed('/screen1');
                },
                child: Text("Go to Next Screen"),
            ),
          ),
        ],
      ),
    );
  }
}
