import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text_form_field.dart';
import 'package:provider/provider.dart';

import '../../../provider/login_provider.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    return BuildTextFormField(

      controller: loginProvider.emailController,
      label: 'Email Address',
      preFix: Icons.mail_outline,
    );
  }
}
