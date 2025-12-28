
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;

  const CustomContainer({
    super.key,
    required this.child,
    this.color,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.boxShadow,
    this.padding,
    this.margin,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        border: borderColor != null
            ? Border.all(
          color: borderColor!,
          width: borderWidth ?? 1,
        )
            : null,
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }
}
