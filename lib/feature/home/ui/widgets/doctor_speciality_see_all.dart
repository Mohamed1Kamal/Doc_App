import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctor Speciality', style: AppTextStyles.font18BlackSemiBold),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text('See All', style: AppTextStyles.font12BlueRegular),
        ),
      ],
    );
  }
}
