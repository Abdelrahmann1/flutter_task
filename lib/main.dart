import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/screens/login_screen.dart';
import 'package:flutter_task/utilities/theme.dart';
import 'package:provider/provider.dart';

import 'auth_provider/login_provider.dart';

void main() {
  //runApp(const MyApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: ChangeNotifierProvider(
        create: (context) => LoginProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const LoginScreen(),
          theme: AppTheme.getLightTheme(context),
          themeMode: ThemeMode.light,
        ),
      ),
    );
  }
}
