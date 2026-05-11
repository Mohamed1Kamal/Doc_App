import 'package:flutter/material.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/widgets/app_bar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
          children: [
            AppBarWidget(title: "FAQ", iconPath: "assets/svgs/search_icon.svg",),
          
          ],
                ),
        )),
        
      );
    
  }
}