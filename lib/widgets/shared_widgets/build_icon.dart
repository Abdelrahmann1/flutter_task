import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/themes/app_colors.dart';

class BuildIcon extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  final double? size;
  const BuildIcon({super.key, required this.icon, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: (size ?? 20).scaledPixels(),
      color: color ?? AppColors.borderColor,
    );
  }
}
