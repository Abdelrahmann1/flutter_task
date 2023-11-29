import 'package:flutter/material.dart';

import '../../../utilities/themes/app_colors.dart';
import '../../../widgets/shared_widgets/build_text.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
        child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(50, 30),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              alignment: AlignmentDirectional.centerEnd),
          onPressed: (){},
          child: const BuildText(
            text: 'Forget password?',
            fontWeight: FontWeight.bold,
            color: AppColors.textButtonColor,
          ),


        ) );
  }
}
