import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_borla/theme/app_color.dart';

import '../gen/custom_assets/assets.gen.dart';

class IconLabelAction extends StatelessWidget {
  final Image icon;
  final String label;
  final VoidCallback onTap;
  final bool selected;

  const IconLabelAction({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {

    final activeColor = Colors.blue;
    final inactiveColor = AppColors.green300;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.only(bottom: 0.3),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color:  selected ? Colors.amber : Colors.transparent ,
                      width: 3),
                ),
              ),
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 14,
                    color: selected ? Colors.amber : inactiveColor,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

