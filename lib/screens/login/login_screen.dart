import 'package:flutter/material.dart';
import 'package:flutter_task/screens/login/widgets/login_form_widget.dart';
import 'package:flutter_task/screens/login/widgets/login_welcome_widget.dart';
import 'package:flutter_task/utilities/extensions.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 181.screenHeightScale(),),
            Column(
              children: [
                const LoginWelcomeWidget(),
                35.screenHeightScale().sizedBox(),
                const LoginFormWidget()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
