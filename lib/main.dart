import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilya/routes.dart';
import 'package:mobilya/themes/my_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      enableLog: false,
      initialRoute: MyRoutes.initialRoute,
    getPages: MyRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      themeMode: ThemeMode.light,
      title: "Mobilya App",
    );
  }
}
