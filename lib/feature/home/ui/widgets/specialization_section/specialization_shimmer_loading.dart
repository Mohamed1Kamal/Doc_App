import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecializationShimmerLoading extends StatelessWidget {
  const SpecializationShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Shimmer.fromColors(
                    baseColor: AppColors.lighterGray,
                    highlightColor: Colors.white,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  verticalSpace(10),
                  Shimmer.fromColors(
                    baseColor: AppColors.lighterGray,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 80.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                     
                    ),
                  ),
                ],
              ),
          separatorBuilder: (context, index) => horizontalSpace(25),
          itemCount: 8,
        ),
    );
  }
}