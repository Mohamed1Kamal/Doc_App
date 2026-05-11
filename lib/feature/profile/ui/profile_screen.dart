import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/build_divider.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_projects/feature/profile/ui/widgets/app_bar.dart';
import 'package:flutter_projects/feature/profile/ui/widgets/avatar_widget.dart';
import 'package:flutter_projects/feature/profile/ui/widgets/menu_item_widget.dart';
import 'package:flutter_projects/feature/profile/ui/widgets/tab_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                AppBarWidget(),
                verticalSpace(70),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        verticalSpace(50),
                        Text(
                          "Omar Ahmed",
                          style: AppTextStyles.font20BlackSimiBold,
                        ),
                        verticalSpace(5),
                        Text(
                          "omarahmed14@gmail.com",
                          style: AppTextStyles.font14LightGrayRegular,
                        ),
                        verticalSpace(24),
                        TabsWidget(),
                        verticalSpace(20),
                        MenuItemWidget(iconPath: "assets/svgs/personal_card_icon.svg",
                          color: Colors.blue,
                          title: "Personal Information"),
                        buildDivider(),
                        MenuItemWidget(iconPath: "assets/svgs/directbox_icon.svg",
                          color: Colors.green,
                          title: "My Test & Diagnostic"),
                        buildDivider(),
                        MenuItemWidget(iconPath: "assets/svgs/wallet_icon.svg",
                          color: Colors.red,
                          title: "Payment"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 90.h,
              left: 0.w,
              right: 0.w,
              child: Center(child: AvatarWidget()),
            ),
          ],
        ),
      ),
    );
  }



  

}
