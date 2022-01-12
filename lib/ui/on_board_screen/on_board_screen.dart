import 'package:auto_car_ui_kit/config/app_colors.dart';
import 'package:auto_car_ui_kit/ui/dashboard_screen/dashboard_screen.dart';
import 'package:auto_car_ui_kit/ui/on_board_screen/on_board_item.dart';
import 'package:flutter/material.dart';

import 'on_board_data_model.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: onBoardList[currentIndex].onBoardBgColor,
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashBoardScreen(),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: AppColors.greyScale_800,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    children: onBoardList
                        .map((e) => OnBoardItem(onBoardDataModel: e))
                        .toList(),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onBoardList.length,
                  (i) => dotCircle(index: i),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashBoardScreen(),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 60, bottom: 20),
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor_500,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: AppColors.greyScale_50,
                        fontSize: 18.0,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  dotCircle({int? index}) {
    return AnimatedContainer(
      curve: Curves.linear,
      duration: const Duration(milliseconds: 600),
      margin: const EdgeInsets.only(
        right: 5,
        top: 10,
      ),
      height: 5,
      width: 40,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? AppColors.primaryColor_500
            : AppColors.greyScale_200,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
