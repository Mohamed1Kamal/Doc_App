import 'package:flutter/material.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_projects/feature/search_doctors/logic/cubit/search_doctors_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              onChanged: (value) {
                // Handle search input change
                SearchDoctorsCubit.get(context).searchDoctors(value);
              },
              decoration: InputDecoration(
                hintText: 'Search for doctor',
                hintStyle: AppTextStyles.font12LightGrayMedium,
                border: InputBorder.none,
                icon: SvgPicture.asset('assets/svgs/search_icon.svg'),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/svgs/sort.svg',
            height: 24.h,
            width: 24.w,
          ),
        ),
      ],
    );
  }
}
