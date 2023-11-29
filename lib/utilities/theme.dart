import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';

class AppTheme {
  static ThemeData getLightTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
    );
  }
}
