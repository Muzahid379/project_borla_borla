
import 'package:flutter/material.dart';

class DottedLinePainter extends CustomPainter {
  final Color color;
  final bool isVertical;

  DottedLinePainter(this.color, this.isVertical);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1;

    const dash = 4.0;
    double start = 0;

    while (start < (isVertical ? size.height : size.width)) {
      if (isVertical) {
        canvas.drawLine(
            Offset(0, start), Offset(0, start + dash), paint);
      } else {
        canvas.drawLine(
            Offset(start, 0), Offset(start + dash, 0), paint);
      }
      start += dash * 2;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}