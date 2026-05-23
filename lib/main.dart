import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Getx_Utils/bottom_sheet_theme_changer.dart';
import 'Getx_Utils/dialog_alert.dart';
import 'Getx_Utils/snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomSheetThemeChangerGetx(),
    );
  }
}
