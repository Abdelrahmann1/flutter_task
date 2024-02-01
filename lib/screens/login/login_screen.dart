import 'package:flutter/material.dart';
import 'package:flutter_task/auth_provider/login_provider.dart';
import 'package:flutter_task/screens/login/widgets/login_form_widget.dart';
import 'package:flutter_task/screens/login/widgets/login_welcome_widget.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              Provider.of<LoginProvider>(context, listen: false)
                  .toggleLanguage();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 181.screenHeightScale(),
            ),
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
