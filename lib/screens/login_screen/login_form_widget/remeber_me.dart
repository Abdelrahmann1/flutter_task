import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Transform.scale(
          scale: .90,
          child: Checkbox(
            checkColor: Colors.red,
            activeColor: AppColors.fillColor,
            value: true,
            onChanged: (val) {},
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side:const BorderSide(color: AppColors.textButtonColor, width: 5)
            ),
          ),
        ),
        const BuildText(
          text: 'Remember me',
          color: AppColors.defaultButtonTextColor,
          fontSize: 13,
        )
      ],
    );
  }
}
