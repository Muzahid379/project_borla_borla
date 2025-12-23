
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_borla/theme/app_color.dart';

import '../../../components/text/common_text.dart';


class LanguageSelectionBottomSheet extends StatefulWidget {
  const LanguageSelectionBottomSheet({super.key});

  @override
  State<LanguageSelectionBottomSheet> createState() =>
      _LanguageSelectionBottomSheetState();
}

class _LanguageSelectionBottomSheetState
    extends State<LanguageSelectionBottomSheet> {
  String selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {'name': 'English', 'greeting': 'Hello'},
    {'name': 'Ghana', 'greeting': 'Akwaaba'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.w, 32.h, 24.w, 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              const CommonText(
                text: 'Choose your language',
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.h),

              // Subtitle
              CommonText(
                text: 'Changing the language will initiate a restart',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.grey[600]!,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32.h),

              // Language Options
              Wrap(
                spacing: 32.w,
                runSpacing: 32.h,
                alignment: WrapAlignment.center,
                children: languages.map((lang) {
                  return LanguageOption(
                    name: lang['name']!,
                    greeting: lang['greeting']!,
                    isSelected: selectedLanguage == lang['name'],
                    onTap: () {
                      setState(() {
                        selectedLanguage = lang['name']!;
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 40.h),

              // Save Button
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: CommonText(
                          text:
                          'Language changed to $selectedLanguage',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    elevation: 0,
                  ),
                  child: const CommonText(
                    text: 'Save',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Reusable widget for a single language option
class LanguageOption extends StatelessWidget {
  final String name;
  final String greeting;
  final bool isSelected;
  final VoidCallback onTap;

  const LanguageOption({
    super.key,
    required this.name,
    required this.greeting,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: 120.w,
                height: 120.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected
                      ? const Color(0xFFE8F5E8)
                      : Colors.grey[100],
                  border: Border.all(
                    color: isSelected ? const Color(0xFF4CAF50) : Colors.transparent,
                    width: 4,
                  ),
                ),
                child: Center(
                  child: CommonText(
                    text: greeting,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: isSelected ? const Color(0xFF4CAF50) : Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              CommonText(
                text: name,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ],
          ),
          if (isSelected)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(6.w),
                decoration: const BoxDecoration(
                  color: Color(0xFF4CAF50),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
