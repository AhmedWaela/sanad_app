import 'package:flutter/material.dart';

class AppDimensions {
  static late double screenWidth;

  static void initDiementions(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
  }
}
