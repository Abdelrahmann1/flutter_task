import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/utilities/extensions.dart';


class SvgImageWidget extends StatelessWidget {
  final String iconName;
  final double? height;
  final double? width;
  final Color? color;

  const SvgImageWidget(
      {required this.iconName, this.height, this.width, this.color , super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(1.0.screenWidthScale()),
      child: SvgPicture.asset(
        'assets/images/$iconName.svg',
        height: (height ?? 16).screenWidthScale(),
        width: (width ?? 16).screenWidthScale(),
        // ignore: deprecated_member_use
        color: color,
      ),
    );
  }
}
