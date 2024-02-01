import 'package:flutter/material.dart';
import 'package:flutter_task/generated/l10n.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';
import 'package:provider/provider.dart';

import '../../../auth_provider/login_provider.dart';
import '../../../widgets/shared_widgets/build_icon_elevated_button.dart';
import '../../../widgets/shared_widgets/build_text_button.dart';
import '../../../widgets/shared_widgets/build_text_form_field.dart';
import 'login_form_widget/login_button.dart';
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
            BuildTextFormField(
              controller: loginProvider.emailController,
              label:S.of(context).EmailAddress,
              preFix: Icons.mail_outline,
            ),
            20.screenHeightScale().sizedBox(),
            BuildTextFormField(
              controller: loginProvider.passwordController,
              label: 'Password',
              preFix: Icons.lock_outline,
            ),
            9.screenHeightScale().sizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Transform.scale(
                      scale: .90,
                      child: Checkbox(
                        checkColor: Colors.red,
                        activeColor: AppColors.fillColor,
                        value: true,
                        onChanged: (val) {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: const BorderSide(
                                color: AppColors.textButtonColor, width: 5)),
                      ),
                    ),
                     BuildText(
                      text: S.of(context).RememberMe,
                      color: AppColors.defaultButtonTextColor,
                      fontSize: 13,
                    )
                  ],
                ),
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: AlignmentDirectional.centerEnd),
                      onPressed: () {},
                      child:  BuildText(
                        text: S.of(context).ForgetPassword,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textButtonColor,
                      ),
                    ))
              ],
            ),
            20.screenHeightScale().sizedBox(),
            const LoginButton(),
            27.screenHeightScale().sizedBox(),
             BuildText(
              text: S.of(context).OR,
              fontSize: 14,
              color: Colors.black,
            ),
            25.screenHeightScale().sizedBox(),
             BuildIconElevatedButton(
              text: S.of(context).SignInwithGoogle,
              iconName: 'google',
              elevatedButtonColor: AppColors.fillColor,
            ),
            28.screenHeightScale().sizedBox(),
             BuildIconElevatedButton(
              text: S.of(context).SignInwithAppleID,
              iconName: 'apple_icon',
              iconColor: AppColors.fillColor,
              elevatedButtonColor: AppColors.defaultButtonTextColor,
              textColor: AppColors.fillColor,
            ),
            28.screenHeightScale().sizedBox(),
             BuildIconElevatedButton(
              text: S.of(context).ContinuewithFacebook,
              iconName: 'facebook_icon',
              elevatedButtonColor: Color(0xff39579A),
              textColor: AppColors.fillColor,
            ),
            40.screenHeightScale().sizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               BuildText(text: S.of(context).DonthaveAnAccount),
              BuildTextButton(text: S.of(context).SignUp, onPressed: () {}),

            ],
          ),
            32.screenHeightScale().sizedBox(),
            SizedBox(
                width: 220.52.screenWidthScale(),
                height: 88.screenHeightScale(),
                child: const TermsOfService()),
          ],
        ),
      ),
    );
  }
}
