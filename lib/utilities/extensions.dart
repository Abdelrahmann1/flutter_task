import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/screen_size.dart';

extension SizedBoxExtentions on num {
  SizedBox sizedBox({num? width}) => SizedBox(
        height: toDouble(),
        width: width?.toDouble(),
      );
}

extension ScreenSizeExtension on num {
  double scaledPixels() => ScreenSize.getResponsiveText(this);
  double screenHeight() => ScreenSize.getScreenHeight(this);
  double screenWidth() => ScreenSize.getScreenWidth(this);
  double screenHeightScale() => ScreenSize.getScreenHeightScale(this);
  double screenWidthScale() => ScreenSize.getScreenWidthScale(this);
}

extension PaddingExtension on num {
  EdgeInsetsGeometry symmetricPadding({double? vertical}) =>
      EdgeInsets.symmetric(
        vertical: (vertical ?? 0).toDouble().screenHeightScale(),
        horizontal: screenWidthScale(),
      );
  EdgeInsetsGeometry allPadding() => EdgeInsets.all(toDouble());
}

