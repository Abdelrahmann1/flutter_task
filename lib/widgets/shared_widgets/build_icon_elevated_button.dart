import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/themes/DefaultStyle.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';
import 'package:flutter_task/widgets/shared_widgets/svg_image_widget.dart';

class BuildIconElevatedButton extends StatelessWidget {
  final String text;
  final String iconName;
  final Color? textColor;
  final Color? iconColor;
  final Color? elevatedButtonColor;
  final void Function()? onPressed;

  const BuildIconElevatedButton({
    super.key,
    required this.text,
    required this.iconName,
    this.textColor,
    this.onPressed,
    this.iconColor,
    this.elevatedButtonColor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.screenHeightScale(),
      child: ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(elevatedButtonColor ),
        ),
        onPressed: onPressed,
        icon: SvgImageWidget(iconName: iconName, height: 21, width: 21, color: iconColor),
        label: BuildText(
          text: text,
          style:  DefaultStyle.textButton.copyWith(color: textColor),
        )
      ),
    );
  }
}
