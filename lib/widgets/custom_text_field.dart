import 'package:flutter/material.dart';
import '../theme/app_color.dart';


class CustomTextField extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final Widget? prefix;
  final Widget? suffix;

  const CustomTextField({
    super.key,
    required this.hint,
    this.obscureText = false,
    this.prefix,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide:  BorderSide(
            color: Colors.grey.shade300,
            width: 1.2,
          ),
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.hint),
        prefixIcon: prefix,
        suffixIcon: suffix,
        filled: true,
        //fillColor: Colors.grey.shade100,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.white54
          ),
        ),
      ),
    );
  }
}
