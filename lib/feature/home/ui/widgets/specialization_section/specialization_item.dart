import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/specialty_icons.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../data/models/specializations_response_model.dart';

class SpecializationItem extends StatefulWidget {
  final SpecializationsModelData specializationData;
  final int selectedIndex;
  final int index;

  const SpecializationItem({
    super.key,
    required this.specializationData,
    required this.index,
    required this.selectedIndex,
  });

  @override
  State<SpecializationItem> createState() => _SpecializationItemState();
}

class _SpecializationItemState extends State<SpecializationItem> {
   

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        widget.selectedIndex == widget.index ?
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.mainBlue, width: 2),
          ),
          child: CircleAvatar(
            radius: 35,
            backgroundColor: AppColors.lightBlue,
            child: Icon(
              getSpecialtyIcon(widget.specializationData.name ?? "default"),
              color: AppColors.mainBlue,
              size: 50,
            ),
          ),
        ):
        CircleAvatar(
            radius: 35,
            backgroundColor: AppColors.lightBlue,
            child: Icon(
              getSpecialtyIcon(widget.specializationData.name ?? "default"),
              color: AppColors.mainBlue,
              size: 40,
            ),
          ),
        Text(
          widget.specializationData.name ?? "specialization name",
          style: widget.selectedIndex == widget.index ? AppTextStyles.font14DarkBlueBold : AppTextStyles.font12BlueRegular,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
  Widget _buildSpecialtyUrlImageError() {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.blue.withOpacity(0.1), // Light blue background
      shape: BoxShape.circle,
      border: Border.all(color: Colors.blue, width: 1.5), // Match your design
    ),
    child: const Icon(
      Icons.medical_services_outlined, // Generic medical icon
      color: Colors.blue,
      size: 30,
    ),
  );
}

}
