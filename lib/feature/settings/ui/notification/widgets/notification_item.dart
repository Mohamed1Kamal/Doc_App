import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/build_divider.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';

class NotificationItem extends StatefulWidget {
  final String title;
   bool value;

   NotificationItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(widget.title,
                  style: AppTextStyles.font14LightGrayRegular.copyWith(color: Colors.black)),
            ),
            Switch(
              activeTrackColor: AppColors.mainBlue,
              activeThumbColor: AppColors.white,
              inactiveThumbColor: AppColors.white,
              inactiveTrackColor: Color(0xFFD9DEE2),
              trackOutlineColor: MaterialStateProperty.all(AppColors.white),
              value: widget.value,
              onChanged: (v) {
                setState(() {
                  widget.value = v;
                });
              },
            ),
          ],
        ),
        buildDivider(height: 20),
      ],
    );
  }
}