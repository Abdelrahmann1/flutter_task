import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text_form_field.dart';
import 'package:provider/provider.dart';

import '../../../provider/login_provider.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    return BuildTextFormField(
      controller:loginProvider.passwordController,
      label: 'Password',
      preFix: Icons.lock_outline,
    );
  }
}
