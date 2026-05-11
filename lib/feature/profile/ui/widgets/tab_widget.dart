import 'package:flutter/material.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 34.w),
      decoration: BoxDecoration(
        color: AppColors.moreLighterGray,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "My Appointment",
                  style: AppTextStyles.font12BlueRegular.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
            child: VerticalDivider(thickness: 1, color: Colors.grey),
          ),
          Expanded(
            child: Center(
              child: InkWell(
                onTap: (){},
                child: Text(
                  "Medical Records",
                  style: AppTextStyles.font12BlueRegular.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}