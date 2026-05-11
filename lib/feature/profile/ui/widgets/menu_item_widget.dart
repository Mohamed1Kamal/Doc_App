import 'package:flutter/material.dart';
import 'package:flutter_projects/core/routing/routes.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_svg/svg.dart';

class MenuItemWidget extends StatelessWidget {
  final String iconPath;
  final Color color;
  final String title;
  const MenuItemWidget({super.key, required this.iconPath, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              iconPath,
              height: 24,
              width: 24,
            ),
          ),
          const SizedBox(width: 15),
          InkWell(
            onTap: (){
              if(title == "Personal Information"){
                Navigator.pushNamed(context, Routes.personalInfoScreen);
              }
              else if(title == "My Test & Diagnostic"){
                Navigator.pushNamed(context, Routes.medicalRecordScreen);
              }
              else if(title == "Payment"){
                Navigator.pushNamed(context, Routes.paymentScreen);
              }
            },
            child: Text(title, style: AppTextStyles.font14GrayRegular.copyWith(color: Colors.black))),
        ],
      ),
    );
  }
}
