import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class RecommendationDoctors extends StatelessWidget {
  const RecommendationDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Recommendation Doctor', style: TextStylesApp.font18BlackSemiBold),
        Spacer(),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/searchDoctors');
          },
          child: Text('See All', style: TextStylesApp.font12BlueRegular),
        ),
      ],
    );
  }
}
