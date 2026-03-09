import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/core/theming/colors.dart';

import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_form.dart';

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({super.key,required this.controller});
  final TextEditingController controller;

  @override
  State<PhoneNumberField> createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: ColorsApp.lighterGray),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 8),
            child: Row(
              children: const [
                Icon(Icons.flag, color: Colors.indigo),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              ],
            ),
          ),
          Container(height: 45, width: 1, color: Colors.grey.shade300),
          Expanded(
            child: AppTextFormField(
              isDense: false,
              controller: widget.controller,
              hintText: "Phone number",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                }
                if (value.length != 11) {
                  return 'Phone number must be 11 digits';
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsApp.lighterGray,
                  width: 0,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsApp.mainBlue,
                  width: 0,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
