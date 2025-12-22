import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Colors.white;
  static const Color textDark = Color(0xFF1E1E1E);
  static const Color hint = Color(0xFFBDBDBD);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFB800), // yellow
      Color(0xFFFF8A00), // orange
    ],
  );
}
