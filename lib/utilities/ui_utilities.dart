import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/shared_widgets/build_text.dart';

class UiUtilities {
  static void showSnackBar({
    required String txt, 
    required BuildContext context
  }) {
    SnackBar snackBar = SnackBar(
      content: BuildText(
        text: txt,
        fontSize: 13.5,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
