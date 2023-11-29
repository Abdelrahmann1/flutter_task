import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';

class BuildText extends StatelessWidget {
  final double? fontSize;

  final String text;
  final String? fontFamily;

  final Color? color;
  final FontWeight? fontWeight;
  final TextStyle? style;

  const BuildText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.fontFamily,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? TextStyle(
        fontFamily: fontFamily?? 'Circular Std Book',
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? AppColors.titleColor,
        fontSize: (fontSize ?? 14).scaledPixels(),
      ),
    );
  }
}
