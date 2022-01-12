import 'package:flutter/material.dart';

import '../../config/image_path.dart';

class OnBoardDataModel {
  final String onBoardTitle;
  final String onBoardDescription;
  final String onBoardImageSrc;
  final Color onBoardBgColor;

  OnBoardDataModel(this.onBoardTitle, this.onBoardDescription,
      this.onBoardImageSrc, this.onBoardBgColor);
}

List<OnBoardDataModel> onBoardList = [
  OnBoardDataModel(
    "Find Your Dream Car",
    "Find the car of your dreams from the worlds largest marketplace",
    ImagePath.onBoardCar_1,
    Colors.white,
  ),
  OnBoardDataModel(
    "Your Offer Is Being Proceed",
    "Find the car of your dreams from the worlds largest marketplace",
    ImagePath.onBoardCar_2,
    Colors.white,
  ),

];
