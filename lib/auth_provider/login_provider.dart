import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/login_response_model.dart';

class LoginProvider extends ChangeNotifier {
  late String _accessToken;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
    bool _isArabic = false;

  bool get isArabic => _isArabic;

  void toggleLanguage() {
    _isArabic = !_isArabic;
    notifyListeners();
  }


  Future<bool> login(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      Fluttertoast.showToast(
        msg: 'Please enter both email and password.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      return false;
    }

    if (!_isValidEmail(email)) {
      Fluttertoast.showToast(
        msg: 'Please enter a valid email address.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      return false;
    }

    try {
      // Make a POST request to the login endpoint
      final response = await Dio().post(
        'https://my-safe-space.alacrity.technology/api/login',
        data: {'email': email, 'password': password},
      );

      // Handle successful login response
      final loginResponse = LoginResponse.fromJson(response.data);
      _accessToken = loginResponse.accessToken;

      // Save the access token to SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', _accessToken);
      Fluttertoast.showToast(
        msg: 'You Now Logged In',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );

      print(response.data);
      print("this is access_token ${prefs.get("access_token")}");
      notifyListeners();
      return true;
    } catch (error) {
      print('Login error: $error');

      Fluttertoast.showToast(
        msg: 'Login failed. Please try again.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );

      return false;
    }
  }

  bool _isValidEmail(String email) {
    final RegExp emailRegex = RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
      caseSensitive: false,
      multiLine: false,
    );
    return emailRegex.hasMatch(email);
  }
}
