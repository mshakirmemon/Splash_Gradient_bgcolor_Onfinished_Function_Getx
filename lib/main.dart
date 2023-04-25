import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen_with_onfinished_function_with_getx/view/splash%20screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Splash with Onfinished Funtion",
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
