import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenSize {
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getResponsiveText(num font) {
    return font.sp;
  }

  static double getScreenHeight(num value) {
    return value.sh;
  }

  static double getScreenWidth(num value) {
    return value.sw;
  }

  static double getScreenHeightScale(num value) {
    return value.h;
  }

  static double getScreenWidthScale(num value) {
    return value.w;
  }

  static bool isCurrentDevicePhone() {
    final double screenWidth = getScreenWidth(1);
    final double screenHeight = getScreenHeight(1);
    final double diagonalInInches =
        sqrt((screenWidth * screenWidth) + (screenHeight * screenHeight)) / 160;
    return diagonalInInches <= 7;
  }
}
