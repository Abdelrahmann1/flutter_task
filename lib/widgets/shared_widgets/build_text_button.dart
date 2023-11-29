import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';

class BuildTextButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const BuildTextButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: const Size(50, 30),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          alignment: AlignmentDirectional.centerEnd),
      onPressed: onPressed,
      child: BuildText(
        text: text,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    );
  }
}
