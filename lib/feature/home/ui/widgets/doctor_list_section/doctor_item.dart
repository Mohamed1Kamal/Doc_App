import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_projects/feature/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/spacing.dart';

class DoctorItem extends StatelessWidget {
  final DoctorsModelData? doctorsData;
  const DoctorItem({super.key, required this.doctorsData});
  @override
  Widget build(BuildContext context) {
    String? imageUrl = doctorsData!.phone;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        imageUrl != null || imageUrl!.isNotEmpty
            ? SizedBox(
                width: 125.w,
                height: 130.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return _buildDoctorFallback();
                    },
                  ),
                ),
              )
            : _buildDoctorFallback(),

        horizontalSpace(15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorsData?.name ?? 'Dr. Randy Wigham',
                style: AppTextStyles.font18BlackBold.copyWith(wordSpacing: 1.5),
              ),
              Text(
                '${doctorsData?.degree} | ${doctorsData?.phone}',
                style: AppTextStyles.font12BlueRegular.copyWith(
                  color: Colors.grey,
                ),
              ),
              Text(
                doctorsData?.email ?? 'Email',
                style: AppTextStyles.font14BlueMedium.copyWith(
                  color: AppColors.mainBlue,
                  height: 3.0.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDoctorFallback() {
    return Container(
      width: 125.w,
      height: 130.h,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Icon(Icons.person, size: 40, color: Colors.grey[600]),
      ),
    );
  }
}
