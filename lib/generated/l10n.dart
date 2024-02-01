// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome Back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Login to continue Radio App`
  String get LoginToContinueRadioApp {
    return Intl.message(
      'Login to continue Radio App',
      name: 'LoginToContinueRadioApp',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get LogIn {
    return Intl.message(
      'Log In',
      name: 'LogIn',
      desc: '',
      args: [],
    );
  }

  /// `By signing up you indicate that you have read and agreed to the Patch`
  String get TermsOfServiceStatment {
    return Intl.message(
      'By signing up you indicate that you have read and agreed to the Patch',
      name: 'TermsOfServiceStatment',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get TermsOfService {
    return Intl.message(
      'Terms of Service',
      name: 'TermsOfService',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get EmailAddress {
    return Intl.message(
      'Email Address',
      name: 'EmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get RememberMe {
    return Intl.message(
      'Remember me',
      name: 'RememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get ForgetPassword {
    return Intl.message(
      'Forget password?',
      name: 'ForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get OR {
    return Intl.message(
      'OR',
      name: 'OR',
      desc: '',
      args: [],
    );
  }

  /// `Sign In with Google`
  String get SignInwithGoogle {
    return Intl.message(
      'Sign In with Google',
      name: 'SignInwithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign In with Apple ID`
  String get SignInwithAppleID {
    return Intl.message(
      'Sign In with Apple ID',
      name: 'SignInwithAppleID',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get ContinuewithFacebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'ContinuewithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account? `
  String get DonthaveAnAccount {
    return Intl.message(
      'Don’t have an account? ',
      name: 'DonthaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get SignUp {
    return Intl.message(
      'Sign up',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
