import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/themes/DefaultStyle.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';

class LoginWelcomeWidget extends StatelessWidget {
  const LoginWelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildText(
          text: 'Welcome Back!',
         style: DefaultStyle.title,
        ),
        BuildText(
          text: 'Login to continue Radio App',
          style: DefaultStyle.title.copyWith(fontSize: 16.scaledPixels()),
        ),
      ],
    );
  }
}
