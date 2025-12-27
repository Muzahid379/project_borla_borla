import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color_two.dart';


class CommonText extends StatelessWidget {
  const CommonText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.color = AppColors.textColor,
    this.textAlign = TextAlign.center,
    this.maxLines = 5,
    this.overflow = TextOverflow.ellipsis,
    this.lineHeight = 1.2,
    this.underline = false,
    this.padding = EdgeInsets.zero,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final int maxLines;
  final TextOverflow overflow;
  final double lineHeight;
  final bool underline;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
          fontFamily: 'SFPro',
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          color: color,
          height: lineHeight,
          decoration:
          underline ? TextDecoration.underline : TextDecoration.none,
          decorationColor: color,
        ),
      ),
    );
  }
}