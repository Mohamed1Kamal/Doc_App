import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/widgets/app_bar_widget.dart';
import 'package:flutter_projects/feature/settings/ui/notification/widgets/notification_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              const AppBarWidget(title: 'Notification'),
              verticalSpace(24),
              const Expanded(child: NotificationList()),
            ],
          ),
        ),
      ),
    );
  }
}