import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/core/routing/routes.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Ali!', style: AppTextStyles.font18BlackBold),
            Text(
              'How Are you Today?',
              style: AppTextStyles.font12LightGrayRegular,
            ),
          ],
        ),
        Spacer(),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(Routes.loginView);
          },
          child: CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.moreLighterGray,
            child: SvgPicture.asset('assets/svgs/notification_button.svg'),
          ),
        ),
      ],
    );
  }
}
