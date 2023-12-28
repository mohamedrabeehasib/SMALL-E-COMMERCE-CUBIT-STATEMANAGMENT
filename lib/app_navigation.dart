import 'package:flutter/material.dart';
class AppNavigator {
  static navigateToNewScreen(bool isFinished, BuildContext context, screen) {
    isFinished == true
        ? Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => screen))
        : Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => screen));
  }
}