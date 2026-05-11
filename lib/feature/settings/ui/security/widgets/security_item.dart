import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/build_divider.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecurityItem extends StatefulWidget {
  final String title;
  final bool hasSwitch;
  bool value;

  SecurityItem({
    super.key,
    required this.title,
    required this.hasSwitch,
    this.value = false,
  });

  @override
  State<SecurityItem> createState() => _SecurityItemState();
}

class _SecurityItemState extends State<SecurityItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                widget.title,
                style: AppTextStyles.font14GrayRegular.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            widget.hasSwitch
                ? Switch(
                    activeTrackColor: AppColors.mainBlue,
                    activeThumbColor: AppColors.white,
                    inactiveThumbColor: AppColors.white,
                    inactiveTrackColor: Color(0xFFD9DEE2),
                    trackOutlineColor: MaterialStateProperty.all(
                      AppColors.white,
                    ),
                    value: widget.value,
                    onChanged: (v) {
                      setState(() {
                        widget.value = v;
                      });
                    },
                  )
                : const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
        buildDivider(height: 20),
      ],
    );
  }
}
