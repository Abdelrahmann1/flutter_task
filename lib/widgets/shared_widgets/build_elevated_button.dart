import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';

class BuildElevatedButton extends StatelessWidget {
  final String text;
  final double? fontSize;
  
  final FontWeight? fontWeight;
  final Color? fontColor;

  final void Function()? onPressed;

  const BuildElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontSize,
    this.fontWeight,
    this.fontColor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.screenHeightScale(),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(5),
          backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(
                width: 2,
                color: AppColors.primaryColor.withOpacity(.8),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        onPressed: onPressed,
        child: BuildText(
          text: text,
          fontSize: fontSize ?? 16,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}
