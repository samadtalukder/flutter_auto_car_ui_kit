import 'package:auto_car_ui_kit/config/app_colors.dart';
import 'package:auto_car_ui_kit/ui/on_board_screen/on_board_data_model.dart';
import 'package:flutter/material.dart';

class OnBoardItem extends StatelessWidget {
  final OnBoardDataModel onBoardDataModel;

  const OnBoardItem({Key? key, required this.onBoardDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          onBoardDataModel.onBoardImageSrc,
          height: 250,
          alignment: Alignment.center,
        ),
        Text(
          onBoardDataModel.onBoardTitle.toUpperCase(),
          maxLines: 1,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColors.greyScale_800,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Text(
            onBoardDataModel.onBoardDescription,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.greyScale_500,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
