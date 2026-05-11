import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/build_divider.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageItem extends StatelessWidget {
  final String title;
  final String groupValue;
  final ValueChanged<String> onChanged;

  const LanguageItem({
    super.key,
    required this.title,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w), 
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppTextStyles.font14LightGrayRegular
                      .copyWith(color: Colors.black),
                ),
              ),
            
              Transform.scale(
                scale: 1.1,
                child: Radio<String>(
                  value: title,
                  groupValue: groupValue,
                  onChanged: (value) {
                    if (value != null) {
                      onChanged(value);
                    }
                  },
                  activeColor: AppColors.mainBlue,
                ),
              ),
            ],
          ),

          verticalSpace(6), 
          buildDivider(height: 1),
        ],
      ),
    );
  }
}