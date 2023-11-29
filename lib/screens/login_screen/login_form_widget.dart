
import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';
import 'package:provider/provider.dart';

import '../../provider/login_provider.dart';
import '../../widgets/shared_widgets/build_icon_elevated_button.dart';
import 'login_form_widget/email_text_field.dart';
import 'login_form_widget/forget_password_button.dart';
import 'login_form_widget/login_button.dart';
import 'login_form_widget/password_text_field.dart';
import 'login_form_widget/remeber_me.dart';
import 'login_form_widget/sign_up_row.dart';
import 'login_form_widget/terms_of_service.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    return Form(
      key: loginProvider.formkey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.screenWidthScale()),
        child: Column(
          children: [
            const EmailTextField(),
            20.screenHeightScale().sizedBox(),
            const PasswordTextField(),
            9.screenHeightScale().sizedBox(),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RememberMe(),
                ForgetPasswordButton(),
              ],
            ),
            20.screenHeightScale().sizedBox(),
            const LoginButton(),
            27.screenHeightScale().sizedBox(),
            const BuildText(
              text: 'OR',
              fontSize: 14,
              color: Colors.black,
            ),
            25.screenHeightScale().sizedBox(),
            const BuildIconElevatedButton(
              text: 'Sign In with Google',
              iconName: 'google',
              elevatedButtonColor: AppColors.fillColor,
            ),
            28.screenHeightScale().sizedBox(),
            const BuildIconElevatedButton(
              text: 'Sign In with Apple ID',
              iconName: 'apple_icon',
              iconColor: AppColors.fillColor,
              elevatedButtonColor: AppColors.defaultButtonTextColor,
              textColor: AppColors.fillColor,
            ),
            28.screenHeightScale().sizedBox(),
            const BuildIconElevatedButton(
              text: 'Continue with Facebook',
              iconName: 'facebook_icon',
              elevatedButtonColor: Color(0xff39579A),
              textColor: AppColors.fillColor,
            ),
            40.screenHeightScale().sizedBox(),
            const SignUpRow(),
            32.screenHeightScale().sizedBox(),
            SizedBox(
              width: 220.52.screenWidthScale(),
              height: 88.screenHeightScale(),
              child: const TermsOfService()
            ),
          ],
        ),
      ),
    );
  }
}
