import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_projects/core/widgets/app_bar_widget.dart';
import 'package:flutter_projects/core/widgets/app_text_button.dart';
import 'package:flutter_projects/feature/settings/ui/languages/widgets/languages_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        child: AppTextButton(
          buttonText: "Save",
          textStyle: AppTextStyles.font16WhiteSemiBold,
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              const AppBarWidget(title: 'Language'),
              verticalSpace(24),
 
              /// Search
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                height: 48.h,
                decoration: BoxDecoration(
                  color: Color(0xFFF2F4F7),
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/svgs/search_icon.svg'),
                    horizontalSpace(8),
                    Text("Search",
                        style: AppTextStyles.font12LightGrayMedium),
                  ],
                ),
              ),

              verticalSpace(26),

              const Expanded(child: LanguageList()),
            ],
          ),
        ),
      ),
    );
  }
}