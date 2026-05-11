import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DocImageWithText extends StatelessWidget {
  const DocImageWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/doc_logo.png"),
        Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4],
              ),
            ),
            child: Image.asset("assets/images/doc_image.png")),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
              'Best Doctor\nAppointment App',
            style: AppTextStyles.font32BlueBold.copyWith(
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
