import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_projects/core/widgets/app_bar_widget.dart';
import 'package:flutter_projects/core/widgets/app_text_button.dart';
import 'package:flutter_projects/feature/personal_info/ui/widgets/user_data_widget.dart';
import 'package:flutter_projects/feature/profile/ui/widgets/avatar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: AppTextButton(
          buttonText: "Save",
          textStyle: AppTextStyles.font16WhiteSemiBold,
          onPressed: (){}
           ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              children: [
                AppBarWidget(title: 'Personal Information',),
                verticalSpace(48),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 112.w),
                  child: AvatarWidget(),
                ),
                verticalSpace(51),
                UserDataWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}