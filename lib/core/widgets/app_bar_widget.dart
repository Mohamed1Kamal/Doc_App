import 'package:flutter/material.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final String? iconPath;
  const AppBarWidget({super.key, required this.title, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.moreLightGray,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.lighterGray,
                width: 1.3,
              ),
            ),
            child: SvgPicture.asset(
              "assets/svgs/back_icon.svg",
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),
        
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: AppTextStyles.font18BlackSemiBold,
            ),
          ),
        ),
        if (iconPath != null && iconPath!.isNotEmpty)
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.moreLightGray,
              borderRadius: BorderRadius.circular(12),
                border: Border.all(
                color: AppColors.lighterGray,
                width: 1.3,
              ),
            ),
            child: SvgPicture.asset(
              iconPath!,
              width: 24.w,
              height: 24.h,
            ),
          ),
        ),

      ],
    );
  }
}