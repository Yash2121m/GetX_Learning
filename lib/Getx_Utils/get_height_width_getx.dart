import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetHeightWidthGetx extends StatefulWidget {
  const GetHeightWidthGetx({super.key});

  @override
  State<GetHeightWidthGetx> createState() => _GetHeightWidthGetxState();
}

class _GetHeightWidthGetxState extends State<GetHeightWidthGetx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Height & Width"),
      ),
      body: Column(
        children: [
          Container(
            width: Get.width * .8,
            height: Get.height * .2,
            decoration: BoxDecoration(
              color: Colors.red
            ),
          ),
          Container(
            width: Get.width * .8,
            height: Get.height * .2,
            decoration: BoxDecoration(
                color: Colors.green
            ),
          ),
          Container(
            width: Get.width * .8,
            height: Get.height * .2,
            decoration: BoxDecoration(
                color: Colors.blue
            ),
          ),
        ],
      ),
    );
  }
}
