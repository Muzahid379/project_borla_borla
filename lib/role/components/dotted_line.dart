import 'package:flutter/material.dart';
import 'package:project_borla/theme/app_color.dart';


class VerticalDottedLine extends StatelessWidget {
  const VerticalDottedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          5,
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
  const HorizontalDottedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        14,
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
