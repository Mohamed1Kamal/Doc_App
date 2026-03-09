import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            Text(
              'Hi, Ali!',
              style: TextStylesApp.font18BlackBold,
            ),
            Text(
              'How Are you Today?',
              style: TextStylesApp.font12LightGrayRegular,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsApp.moreLighterGray,
          child: SvgPicture.asset(
            'assets/svgs/notification_button.svg',
          ),
        ),
      ],
    );
  }
}
