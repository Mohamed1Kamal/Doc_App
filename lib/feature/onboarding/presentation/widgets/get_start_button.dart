import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/shared_pref_helper.dart';
import 'package:flutter_projects/core/theming/colors.dart';

import '../../../../core/helper/constants.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';


class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: () async {
        Navigator.of(context).pushNamed(Routes.loginView);
        await SharedPrefHelper.setData(SharedPrefKeys.isFirstTimeUser, false);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 60),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
          'Get Started',
        style: AppTextStyles.font16WhiteMedium,
      ),
      
    );
  }
}
