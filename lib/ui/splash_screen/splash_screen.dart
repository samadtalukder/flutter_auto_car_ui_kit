import 'package:auto_car_ui_kit/config/image_path.dart';
import 'package:auto_car_ui_kit/ui/on_board_screen/on_board_data_model.dart';
import 'package:auto_car_ui_kit/ui/on_board_screen/on_board_item.dart';
import 'package:auto_car_ui_kit/ui/on_board_screen/on_board_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.icCar,
              color: Colors.white,
              height: 120,
            ),
            Text(
              "Auto Car".toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
