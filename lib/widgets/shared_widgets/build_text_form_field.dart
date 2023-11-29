import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/themes/DefaultStyle.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';
import 'package:flutter_task/widgets/shared_widgets/build_icon.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';

class BuildTextFormField extends StatelessWidget {
  
  final String? label;
  final String? placeholder;
  final bool? obscureText;
  
  final IconData? preFix;
  final IconData? postFix;
  
  final TextInputType? keyboard;
  final TextEditingController? controller;
  
  final Function()? showPassword;
  final Function(String)? onChange;
  final String? Function(String?)? validate;

  const BuildTextFormField({
    Key? key,
    required this.controller,
    required this.label,
    this.preFix,
    this.postFix,
    this.keyboard,
    this.obscureText,
    this.placeholder,
    this.validate,
    this.showPassword,
    this.onChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
      style: DefaultStyle.hintFormFields,
      controller: controller,
      validator: validate,
      keyboardType: keyboard,
      onChanged: onChange,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.fillColor,
        hintText: placeholder,
        label: BuildText(
          text: label!,
          fontWeight: FontWeight.normal,
          color: AppColors.textFormColor
        ),
        errorBorder: InputBorder.none,
        errorStyle: TextStyle(
          fontFamily: 'Circular Std Book',
          fontSize: 13.scaledPixels(),
        ),
        isDense: false,
        contentPadding: EdgeInsets.symmetric(vertical: 24.screenHeightScale()), // <-- SEE HERE
        hoverColor: AppColors.primaryColor.withOpacity(.02),
        // contentPadding: 20.symmetricPadding(),
        border:  OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(6),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(6),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.circular(6),
        ),
        prefixIcon: preFix == null ? null: Padding(
          padding: EdgeInsets.only(left: 24.screenWidthScale(), right: 12.screenWidthScale()),
          child: BuildIcon(
            icon: preFix!,
            color: AppColors.textFormColor,
          ),
        ),
        suffixIcon: InkWell(
          onTap: showPassword,
          child: Padding(
            padding: EdgeInsets.only(left: 24.screenWidthScale(), right: 12.screenWidthScale()),
            child: BuildIcon(
              icon: postFix,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
