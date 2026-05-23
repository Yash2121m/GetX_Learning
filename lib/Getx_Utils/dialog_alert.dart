import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogAlertGetx extends StatefulWidget {
  const DialogAlertGetx({super.key});

  @override
  State<DialogAlertGetx> createState() => _DialogAlertGetxState();
}

class _DialogAlertGetxState extends State<DialogAlertGetx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Data 1"),
              subtitle: Text("Subtitle of the Data to be shown"),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.all(10),
                  contentPadding: EdgeInsets.all(10),
                  middleText: 'Are You Sure !!!',
                  // textConfirm: 'Yes',
                  // textCancel: 'Cancel',
                  confirm: TextButton(
                      onPressed: (){
                        Get.back();
                      },
                      child: Text("Yes"),
                  ),
                  cancel: TextButton(
                    onPressed: (){},
                    child: Text("No"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
