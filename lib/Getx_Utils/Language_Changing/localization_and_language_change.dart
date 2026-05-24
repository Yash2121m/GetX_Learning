import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationAndLanguageChange extends StatefulWidget {
  const LocalizationAndLanguageChange({super.key});

  @override
  State<LocalizationAndLanguageChange> createState() => _LocalizationAndLanguageChangeState();
}

class _LocalizationAndLanguageChangeState extends State<LocalizationAndLanguageChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Localization & Language Change"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('message'.tr ),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              OutlinedButton(
                  onPressed: (){
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: Text("English"),
              ),
              SizedBox(width: 30,),
              OutlinedButton(
                onPressed: (){
                  Get.updateLocale(Locale('sp', 'US'));
                },
                child: Text("Spanish"),
              ),
              SizedBox(width: 30,),
              OutlinedButton(
                onPressed: (){
                  Get.updateLocale(Locale('mr', 'IND'));
                },
                child: Text("Marathi"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
