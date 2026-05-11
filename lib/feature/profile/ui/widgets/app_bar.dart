import 'package:flutter/material.dart';
import 'package:flutter_projects/core/routing/routes.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric( horizontal: 16.0.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Icon(Icons.arrow_back_ios, color: Colors.white),
          Text(
            "Profile",
            style: AppTextStyles.font18WitheMedium,
          ),
         InkWell(
           onTap: () {
             Navigator.pushNamed(context, Routes.settingsScreen);
           },
           child: SvgPicture.asset(
              'assets/svgs/setting_icon.svg',
              color: Colors.white,
              width: 24.w,
              height: 24.h,
            ),
         ),
        ],
      ),
    );
  }
}