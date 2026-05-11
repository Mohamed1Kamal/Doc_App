import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_projects/core/widgets/app_bar_widget.dart';
import 'package:flutter_projects/core/widgets/app_text_button.dart';
import 'package:flutter_projects/feature/payment/ui/widgets/payment_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: AppTextButton(
          buttonText: "Add New",
          textStyle: AppTextStyles.font16WhiteSemiBold,
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              const AppBarWidget(title: 'Payment', iconPath: "assets/svgs/scanner_icon.svg"),
              verticalSpace(24),
              const Expanded(child: PaymentList()),
            ],
          ),
        ),
      ),
    );
  }
}