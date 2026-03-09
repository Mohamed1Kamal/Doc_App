import 'package:flutter/material.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/models/specializations_response_model.dart';

class SpecializationItem extends StatelessWidget {
  final SpecializationsModelData specializationData;
  final int index;
  const SpecializationItem({super.key, required this.specializationData, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: ColorsApp.lightBlue,
          child: SvgPicture.asset(
             'assets/svgs/doc_logo.svg',
            height: 40.h,
            width: 40.w,
          ),
        ),
        SizedBox(
          width: 80.w,
          child: Text(
            specializationData.name ?? "specialization name",
            style: TextStylesApp.font12BlueRegular,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
