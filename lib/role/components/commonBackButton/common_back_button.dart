
import 'package:flutter/material.dart';

class CommonBackButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;

  const CommonBackButton({
    super.key,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: InkWell(
        onTap: onPressed ?? () => Navigator.pop(context),
        child: Icon(Icons.arrow_back_ios_new_rounded, color: color ?? Colors.black),) ,
    );
  }
}