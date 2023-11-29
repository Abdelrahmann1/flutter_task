import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text_button.dart';

class SignUpRow extends StatelessWidget {
  const SignUpRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const BuildText(text: 'Don’t have an account? '),
        BuildTextButton(text: 'Sign up', onPressed: () {}),

      ],
    );
  }
}
