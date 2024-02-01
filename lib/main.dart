import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/generated/l10n.dart';
import 'package:flutter_task/screens/login/login_screen.dart';
import 'package:flutter_task/utilities/theme.dart';
import 'package:provider/provider.dart';

import 'auth_provider/login_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        // Add other providers if needed
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        locale: Provider.of<LoginProvider>(context).isArabic ? const Locale("ar") : const Locale("en"),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
        theme: AppTheme.getLightTheme(context),
        themeMode: ThemeMode.light,
      ),
    );
  }
}
