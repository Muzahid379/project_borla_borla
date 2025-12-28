import 'package:flutter/material.dart';
import 'package:project_borla/theme/app_color.dart';


class VerticalDottedLine extends StatelessWidget {
  int dotCount;
  double height;
  VerticalDottedLine({super.key, this.dotCount = 5, this.height = 40});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          dotCount,
              (_) => Container(
            width: 1,
            height: 4,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}

class HorizontalDottedLine extends StatelessWidget {
  int dotCount;
  HorizontalDottedLine({super.key, this.dotCount = 14});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        dotCount,
            (_) => Expanded(
          child: Container(
            height: 1,
            margin: const EdgeInsets.symmetric(horizontal: 2),
            color: AppColors.gray200,
          ),
        ),
      ),
    );
  }
}
