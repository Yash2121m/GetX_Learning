import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/Getx_Utils/Language_Changing/languages.dart';

import 'Getx_Utils/Language_Changing/localization_and_language_change.dart';
import 'Getx_Utils/Navigation_using_Getx/navigation_getx_2.dart';
import 'Getx_Utils/Navigation_using_Getx/navigation_getx_3.dart';
import 'Getx_Utils/bottom_sheet_theme_changer.dart';
import 'Getx_Utils/dialog_alert.dart';
import 'Getx_Utils/Navigation_using_Getx/navigation_getx.dart';
import 'Getx_Utils/get_height_width_getx.dart';
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
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      home: LocalizationAndLanguageChange(),

      // Routs Using Getx
      getPages: [
        GetPage(name: '/', page: () => NavigationUsingGetx()),
        GetPage(name: '/screen1', page: () => NavigationUsingGetx2()),
        GetPage(name: '/screen2', page: () => NavigationUsingGetx3()),
      ],
    );
  }
}
