import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/extensions.dart';
import 'package:flutter_task/utilities/screen_size.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';

buildAppBar(String title, {bool? center}) {
  bool isPhone = ScreenSize.isCurrentDevicePhone();
  return AppBar(
    toolbarHeight: isPhone ? null : 45.screenHeightScale(),
    iconTheme: IconThemeData(
      size: 20.scaledPixels(),
      color: Colors.white,
    ),
    centerTitle: center,
    title: BuildText(
      text: title,
      fontSize: 20,
    ),
  );
}
