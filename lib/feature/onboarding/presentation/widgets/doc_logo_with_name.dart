import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/styles.dart';

class DocLogoWithName extends StatelessWidget {
  const DocLogoWithName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/doc_logo.svg"),
        SizedBox(width: 10.w,),
        Text("Docdoc", style: AppTextStyles.font24BlackW700,),

      ],
    );
  }
}
