import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../data/models/doctors_response_model.dart';

class DoctorItem extends StatelessWidget {
  final DoctorsData doctorsData;
  const DoctorItem({super.key, required this.doctorsData});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 125.w,
          height: 130.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/doctor_image.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        horizontalSpace(15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  doctorsData.name ?? 'Dr. Randy Wigham',
                style: TextStylesApp.font18BlackBold.copyWith(wordSpacing: 1.5),

              ),
              Text(
                  '${doctorsData.degree} | ${doctorsData.phone}',
                style: TextStylesApp.font12BlueRegular.copyWith(color: Colors.grey),
              ),
              Text(
                  doctorsData.email??'Email',
                style: TextStylesApp.font14BlueMedium.copyWith(color: ColorsApp.mainBlue,height:3.0.h),
              ),
            ],
          ),
        ),

      ]
    );
  }
}
