import 'dart:ui';

import 'package:flutter/material.dart' show TextStyle;
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';
class DefaultStyle {
  static  String get circularStdBook => 'Circular Std Book';
  static  String get poppins => 'Poppins';
  static  String get circularStdBold => 'Circular Std Bold';
  static  String get circularStdBlack => 'Circular Std Black';


  static  TextStyle get textButton =>                TextStyle(fontSize: 14.scaledPixels(), fontWeight: FontWeight.normal, color: AppColors.defaultButtonTextColor, fontFamily: circularStdBook );
  static  TextStyle get termsButton =>               TextStyle(fontSize: 9.scaledPixels(), fontWeight: FontWeight.normal, color: AppColors.termsColor, fontFamily: circularStdBook );
  static  TextStyle get title =>                     TextStyle(fontSize: 23.scaledPixels(), fontWeight: FontWeight.w100, fontStyle: FontStyle.normal, color: AppColors.defaultButtonTextColor, fontFamily: circularStdBook);
  static  TextStyle get hintFormFields =>            TextStyle(fontSize: 14.scaledPixels(),  fontStyle: FontStyle.normal, color: AppColors.hintColor, fontFamily: circularStdBlack);
  static  TextStyle get textButtonStyle =>           TextStyle(fontSize: 14.scaledPixels(),  fontStyle: FontStyle.normal, color: AppColors.textButtonColor, fontFamily: circularStdBook);
  static  TextStyle get textCheckBoxStyle =>         TextStyle(fontSize: 13.scaledPixels(),  fontStyle: FontStyle.normal, color: AppColors.defaultButtonTextColor, fontFamily: circularStdBook);



}