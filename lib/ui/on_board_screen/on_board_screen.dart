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
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
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
                  (i) => createCircle(index: i),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 60, bottom: 20),
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
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

  createCircle({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1),
      margin: const EdgeInsets.only(
        right: 4,
        top: 10,
      ),
      height: 5,
      width: 40,
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.blueAccent : Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
