import 'package:flutter/material.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/feature/home/ui/widgets/doctor_blue_container.dart';
import 'package:flutter_projects/feature/home/ui/widgets/doctor_list_section/doctor_list_view.dart';
import 'package:flutter_projects/feature/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:flutter_projects/feature/home/ui/widgets/home_top_bar.dart';
import 'package:flutter_projects/feature/home/ui/widgets/recommendation_doctors.dart';
import 'package:flutter_projects/feature/home/ui/widgets/specialization_section/specializations_section.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTopBar(),
            DoctorBlueContainer(),
            verticalSpace(15),
            DoctorSpecialitySeeAll(),
            verticalSpace(10),
            SpecializationsSection(),
            RecommendationDoctors(),
            verticalSpace(5),
            DoctorListView(),
          ],
        ),
      ),
    );
  }
}
