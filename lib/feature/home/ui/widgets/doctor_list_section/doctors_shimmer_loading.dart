import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsShimmerLoading extends StatelessWidget {
  const DoctorsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => Row(
            children: [
              Shimmer.fromColors(
                 baseColor: AppColors.lighterGray,
                  highlightColor: Colors.white,
                  child: Container(
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                )),
              horizontalSpace(20),
              Column(
                children: [
                  Shimmer.fromColors(
                    baseColor: AppColors.lighterGray,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 120.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  verticalSpace(8),
                  Shimmer.fromColors(
                    baseColor: AppColors.lighterGray,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 100.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  verticalSpace(8),
                  Shimmer.fromColors(
                    baseColor: AppColors.lighterGray,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 70.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          separatorBuilder: (context, index) => verticalSpace(40),
          itemCount: 7,
        ),
    );
  }
}