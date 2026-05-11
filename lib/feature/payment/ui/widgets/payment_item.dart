import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentItem extends StatelessWidget {
  final String title;
  final String number;
  final String iconPath;

  const PaymentItem({
    super.key,
    required this.title,
    required this.number,
    required this.iconPath,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              iconPath,
              width: 24.w,
              height: 24.h,
            ),
          ),
          horizontalSpace(16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.font14BlueMedium.copyWith(color: Colors.black)),
                verticalSpace(4),
                Text("**** **** **** $number",
                    style: AppTextStyles.font12LightGrayRegular),
              ],
            ),
          ),

          Text(
            "Connected",
            style: AppTextStyles.font14BlueRegular,
          )
        ],
      ),
    );
  }
}