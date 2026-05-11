import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/build_divider.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/routing/routes.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_projects/core/widgets/app_bar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsScreen extends StatelessWidget {
   SettingsScreen({super.key});

  final List<String> settingsOptions = [
    "Notifications",
    "FAQ",
    "Security",
    "Languages",
    "Logout",
  ];
  final List<String> settingsIcons = [
    'assets/svgs/notification_icon.svg',
    'assets/svgs/faq_icon.svg',
    'assets/svgs/lock_icon.svg',
    'assets/svgs/language_icon.svg',
    'assets/svgs/logout_icon.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 36.w),
            child: Column(
              children: [
                AppBarWidget(title: "Settings"),
                verticalSpace(32),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => _buildItem(
                    title: settingsOptions[index],
                    iconPath: settingsIcons[index],
                    index: index,
                    context: context,
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemCount: settingsOptions.length,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItem({required String title, required String iconPath, required int index, required BuildContext context}) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.pushNamed(context, Routes.notificationScreen);
            }
             if (index == 1) {
              Navigator.pushNamed(context, Routes.faqscreen);
            }
            if (index == 2) {
              Navigator.pushNamed(context, Routes.securityScreen);
            }
            if (index == 3) {
              Navigator.pushNamed(context, Routes.languagesScreen);
            }

          },
          child: Row(
            children: [
              SvgPicture.asset(
                iconPath,
                width: 28.w,
                height: 28.h,
              ),
              horizontalSpace(10.w),
              Text(
                title,
                style: AppTextStyles.font14LightGrayRegular.copyWith(
                  color: index == 4 ? Colors.red : Colors.black,
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16.sp),
            ],
          ),
        ),
        verticalSpace(4.h),
        buildDivider(),
      ],
    );
  }
}
