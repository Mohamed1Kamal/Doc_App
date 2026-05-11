import 'package:flutter/material.dart';
import 'package:flutter_projects/core/theming/colors.dart';

import '../../../../core/theming/styles.dart';

class GenderSelector extends StatefulWidget {
   const GenderSelector({super.key, required this.onGenderChanged});
   final void Function(int value) onGenderChanged;

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return  DropdownButtonFormField<String>(
      icon: const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        hintText: "Select Gender",
        hintStyle:  AppTextStyles.font14LightGrayRegular,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.lighterGray, width: 1.3),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.mainBlue, width: 1.3),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
        ),

        filled: true,
        fillColor: Colors.white,
      ),
      value: selectedGender,
      items: <String>['Male', 'Female'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          selectedGender = newValue;
          int genderValue = 0;
          if (selectedGender == 'Male') {
            genderValue = 0;
          } else if (selectedGender == 'Female') {
            genderValue = 1;
          }
          widget.onGenderChanged(genderValue);
        });
      },
      validator: (value){
        if (value == null || value.isEmpty) {
          return 'Please select a gender';
        }
        return null;
      },
    );
  }
}
