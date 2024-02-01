import 'package:flutter/material.dart';
import 'package:flutter_task/generated/l10n.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/themes/DefaultStyle.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';

class TermsOfService extends StatelessWidget {
  const TermsOfService({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.screenWidthScale()),
          child: Text.rich(
            textAlign: TextAlign.center,
            TextSpan(children: [
              TextSpan(
                  text: S.of(context).TermsOfServiceStatment,
                  style: DefaultStyle.termsButton
                      .copyWith(color: AppColors.defaultButtonTextColor)),
              TextSpan(
                  text: S.of(context).TermsOfService,
                  style: DefaultStyle.termsButton),
            ]),
          ),
        )
      ],
    );
  }
}
