import 'package:auto_car_ui_kit/config/app_colors.dart';
import 'package:auto_car_ui_kit/config/image_path.dart';
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
      const Duration(seconds: 3),
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
      backgroundColor: AppColors.primaryColor_500,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePath.icCar,
              color: Colors.white,
              height: 120,
            ),
            const Text(
              "AUTO CAR",
              style: TextStyle(
                color: AppColors.greyScale_50,
                fontSize: 22.0,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
