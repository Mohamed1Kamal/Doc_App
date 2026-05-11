import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_projects/feature/medical_record/ui/widgets/medical_record_item.dart';

class MedicalRecordList extends StatelessWidget {
  const MedicalRecordList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("This Month", style: AppTextStyles.font16WhiteSemiBold.copyWith(color: Colors.black)),
        verticalSpace(16),

        const MedicalRecordItem(),
        

        verticalSpace(24),

        Text("January", style: AppTextStyles.font16WhiteSemiBold.copyWith(color: Colors.black)),
        verticalSpace(16),

        const MedicalRecordItem(),
   
      ],
    );
  }
}