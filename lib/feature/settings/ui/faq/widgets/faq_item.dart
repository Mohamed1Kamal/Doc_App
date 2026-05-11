import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/core/theming/styles.dart';

class FAQItem extends StatefulWidget {
  final String headText;
  final String bodyText;

  const FAQItem({super.key, required this.headText, required this.bodyText});

  @override
  State<FAQItem> createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                widget.headText,
                style: AppTextStyles.font14GrayRegular.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Icon(
                    isExpanded 
                    ? Icons.keyboard_arrow_down
                    : Icons.keyboard_arrow_up,
                color: Colors.black,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        if (isExpanded)
          Text(widget.bodyText, style: AppTextStyles.font10GrayRegular),
      ],
    );
  }
}
