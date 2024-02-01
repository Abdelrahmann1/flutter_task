import 'package:flutter/material.dart';
import 'package:flutter_task/generated/l10n.dart';
import 'package:flutter_task/widgets/shared_widgets/build_elevated_button.dart';
import 'package:provider/provider.dart';

import '../../../../auth_provider/login_provider.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return SizedBox(
      width: double.infinity,
      child: BuildElevatedButton(
          text: S.of(context).LogIn,
          onPressed: () {
            loginProvider.login(loginProvider.emailController.text,
                loginProvider.passwordController.text);
          }),
    );
  }
}
