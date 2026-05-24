import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/Getx_Utils/Counter_App_Getx/counter_controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print("Screen Rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter APP Using GetX"),
      ),
      body: Center(
        child: Obx(() {
          print("Only Widget Rebuild");
          return Text(controller.counter.toString(), style: TextStyle(fontSize: 60),);
        }
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementCounter();
      },
        child: Icon(Icons.add),
      )
    );
  }
}
