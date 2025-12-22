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
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.hint),
        prefixIcon: prefix,
        suffixIcon: suffix,
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
