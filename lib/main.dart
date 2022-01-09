import 'package:auto_car_ui_kit/ui/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AutoCarApp());
}

class AutoCarApp extends StatelessWidget {
  const AutoCarApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Car UI Kit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

