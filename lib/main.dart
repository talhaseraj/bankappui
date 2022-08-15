import 'package:dezzex/Screens/dashboard_screen.dart';
import 'package:dezzex/Screens/login_screen.dart';
import 'package:dezzex/Screens/your_cards_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/transfer_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff0093C1),
      ),
      home:  const LoginScreen(),
    );
  }
}
