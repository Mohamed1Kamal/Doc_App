import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/styles.dart';

class MedicalRecordItem extends StatelessWidget {
  const MedicalRecordItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          _buildItem(date: 'Feb 25', title: 'End of observation'),
          _buildItem(
            date: 'Feb 25',
            title: "Blood Analysis",
            description:
                "red blood cell : 4.10 million cells/mcL\n"
                "hemoglobin : 142 grams/L\n"
                "hematocrit : 33.8%\n"
                "white blood cells : 3,850 cells/mcL",
          ),
          verticalSpace(10),
          _buildItem(
            date: 'Feb 25',
            title: "Blood Analysis",
            description:
                "red blood cell : 4.10 million cells/mcL\n"
                "hemoglobin : 142 grams/L\n"
                "hematocrit : 33.8%\n"
                "white blood cells : 3,850 cells/mcL",
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required String date,
    required String title,
    String? description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(date, style: AppTextStyles.font14GrayRegular),
        horizontalSpace(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.font14BlackSemiBold),
              verticalSpace(8),

              Text(
                description ?? "",
                style: AppTextStyles.font12LightGrayRegular,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
