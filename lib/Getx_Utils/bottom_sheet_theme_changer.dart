import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetThemeChangerGetx extends StatefulWidget {
  const BottomSheetThemeChangerGetx({super.key});

  @override
  State<BottomSheetThemeChangerGetx> createState() => _BottomSheetThemeChangerGetx();
}

class _BottomSheetThemeChangerGetx extends State<BottomSheetThemeChangerGetx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Data 1"),
              subtitle: Text("Subtitle of the Data to be shown"),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light Theme"),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Theme"),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
