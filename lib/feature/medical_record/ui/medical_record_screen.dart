import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/widgets/app_bar_widget.dart';
import 'package:flutter_projects/feature/medical_record/ui/widgets/medical_record_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicalRecordScreen extends StatelessWidget {
  const MedicalRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarWidget(title: 'Medical Record', iconPath: "assets/svgs/dots_icon.svg"),
              verticalSpace(24),
              const Expanded(
                child: MedicalRecordList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}