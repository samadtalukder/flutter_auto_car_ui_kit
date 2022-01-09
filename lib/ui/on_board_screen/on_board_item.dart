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
          color: Colors.black87,
          height: 120,
          alignment: Alignment.center,
        ),
        Text(
          onBoardDataModel.onBoardTitle.toUpperCase(),
          maxLines: 1,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 24,
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
              color: Colors.grey,
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        /* Container(
            margin: const EdgeInsets.only(
              top: 24,
              bottom: 24,
            ),
            child: Image.asset(
              ImagePath.icCar,
              color: Colors.black87,
              height: 120,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Find Your Dream Car".toUpperCase(),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Text(
                    "Find the car of your dreams from the worlds largest marketplace",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),*/
      ],
    );
  }
}
