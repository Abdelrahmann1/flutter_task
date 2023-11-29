import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/extensions.dart';


class BuildAssetImage extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  const BuildAssetImage(
      {super.key, required this.path, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      height: height?.screenHeightScale(),
      width: width?.screenWidthScale(),
    );
  }
}
