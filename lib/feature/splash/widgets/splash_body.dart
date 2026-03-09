import 'package:flutter/material.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../onboarding/presentation/onboarding_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if(mounted){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => OnboardingView(),
          ),
        );
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/doc_logo.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            SvgPicture.asset("assets/svgs/doc_logo_splash.svg"),
            SizedBox(width: 10.w,),
            Text("Docdoc",
              style: TextStylesApp.font24BlackW700.copyWith(fontSize: 45),
            )

          ],),
        ],
      ),
    );
  }
}
