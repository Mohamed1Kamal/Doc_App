import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/build_divider.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/colors.dart';
import 'package:flutter_projects/core/widgets/app_bar_widget.dart';
import 'package:flutter_projects/feature/settings/ui/faq/widgets/faq_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FAQScreen extends StatefulWidget {
  FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  // test before API
  final List<List<String>> items = [
    [
      "What should I expect during a doctor's appointment?",
      "During a doctor's appointment, you can expect to discuss your medical history, current symptoms or concerns, and any medications or treatments you are taking. The doctor will likely perform a physical exam and may order additional tests or procedures if necessary.",
    ],
    [
      "What should I bring to my doctor's appointment?",
      "you can doing any thing of what are you mind plallal",
    ],
    [
      "What if I need to cancel or reschedule my appointment?",
      "you can doing any thing of what are you mind plallal",
    ],
    [
      "How do I make an appointment with a doctor?",
      "you can doing any thing of what are you mind plallal",
    ],
    [
      "How early should I arrive for my doctor's appointment?",
      "you can doing any thing of what are you mind plallal",
    ],
    [
      "How long will my doctor's appointment take?",
      "you can doing any thing of what are you mind plallal",
    ],
    [
      "How much will my doctor's appointment cost?",
      "you can doing any thing of what are you mind plallal",
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              AppBarWidget(
                title: "FAQ",
                iconPath: "assets/svgs/search-normal.svg",
              ),
              verticalSpace(32),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return FAQItem(
                      headText: items[index][0],
                      bodyText: items[index][1],
                    
                    );
                  },
                  separatorBuilder: (context, index) =>
                      buildDivider(height: 32),
                  itemCount: items.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
