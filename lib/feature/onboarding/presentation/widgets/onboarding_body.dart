import 'package:flutter/cupertino.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doc_image_with_text.dart';
import 'doc_logo_with_name.dart';
import 'get_start_button.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: 40.h, bottom: 40.h),
          child: Column(
            children: [
              DocLogoWithName(),
              SizedBox(
                height: 30.h,
              ),
              DocImageWithText(),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  style: AppTextStyles.font13GrayRegular,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30.w),
                child: GetStartedButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
