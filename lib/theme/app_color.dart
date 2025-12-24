import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Colors.white;
  static const Color textDark = Color(0xFF1E1E1E);
  static const Color hint = Color(0xFFBDBDBD);

  static const Color transparentColor = Colors.transparent;
  static const Color primaryColor = Color(0xff00A654);
  static const Color textColor = Color(0xff484848);
  static const Color iconColor = Color(0xff00A654);
  static const Color hintTextColor = Color(0xff666666);
  static const Color textFieldBorderColor = Color(0xffE6E6E6);
  static const Color green500 = Color(0xff00A654);
  static const Color green100 = Color(0xffB0E3CA);
  static const Color gray200 = Color(0xffD9D9D9);
  static const Color gray300 = Color(0xff898989);
  static const Color gray400 = Color(0xff727272);
  static const Color gray500 = Color(0xff4F4F4F);
  static const Color blue = Color(0xff92DEFF);
  static const Color black50 = Color(0xffE6E6E6);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFB800), // yellow
      Color(0xFFFF8A00), // orange
    ],
  );
}
