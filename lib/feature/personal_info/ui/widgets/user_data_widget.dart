import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_projects/core/widgets/app_text_form.dart';

class UserDataWidget extends StatelessWidget {
  const UserDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          controller: TextEditingController(text: "Omar Ahmed"),
          backgroundColor: AppColors.moreLightGray,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "name is required";
            }
            return null;
          },
        ),
        verticalSpace(16),
        AppTextFormField(
          controller: TextEditingController(text: "mohamed@gmail.com"),
          backgroundColor: AppColors.moreLightGray,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "email is required";
            }
            return null;
          },
        ),
        verticalSpace(16),
        AppTextFormField(
          controller: TextEditingController(text: "Password"),
          backgroundColor: AppColors.moreLightGray,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Password is required";
            }
            return null;
          },
        ),
        verticalSpace(16),
        AppTextFormField(
          controller: TextEditingController(text: "+20123456789"),
          backgroundColor: AppColors.moreLightGray,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Phone number is required";
            }
            return null;
          },
        ),
        verticalSpace(24),
        Text(
          "When you set up your personal information settings, you should take care to provide accurate information.",
          style: AppTextStyles.font12LightGrayRegular,
          ),
      ],
    );
  }
}
