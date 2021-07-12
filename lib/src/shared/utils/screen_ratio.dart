// For calculating the screen ratio for widgets to fit in every kind of device.
// The base is iphone 6 - 375 x 667
import 'package:flutter/material.dart';

class ScreenRatio {
  static MediaQueryData? _mediaQueryData;
  static double? heightRatio;
  static double? widthRatio;
  static double? screenheight;
  static double? screenwidth;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenheight = _mediaQueryData?.size.height;
    screenwidth = _mediaQueryData?.size.width;
    heightRatio = screenheight! / 667.0;
    widthRatio = screenwidth! / 375.0;
  }
}
