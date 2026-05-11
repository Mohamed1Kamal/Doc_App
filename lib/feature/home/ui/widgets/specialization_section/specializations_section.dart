import 'dart:core' as debug;
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/feature/home/ui/widgets/specialization_section/specialization_item.dart';
import 'package:flutter_projects/feature/home/ui/widgets/specialization_section/specialization_shimmer_loading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../data/models/specializations_response_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_states.dart';

class SpecializationsSection extends StatefulWidget {
  const SpecializationsSection({super.key});

  @override
  State<SpecializationsSection> createState() => _SpecializationsSectionState();
}

class _SpecializationsSectionState extends State<SpecializationsSection> {
  int selectedSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      buildWhen: (previous, current) {
        return current.maybeWhen(
          specializationsLoading: () => true,
          specializationsSuccess: (_) => true,
          specializationsError: (_) => true,
          orElse: () => false,
        );
      },
      builder: (BuildContext context, HomeStates state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationsModelData) {
            return setupSuccess(specializationsModelData);
          },
          specializationsError: (error) {
            return setupError();
          },

          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return SpecializationShimmerLoading();
  }

  Widget setupSuccess(List<SpecializationsModelData?>? specializationDataList) {
    
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedSpecializationIndex = index;
              context.read<HomeCubit>().getDoctorsByIdSpecilization(index);
            });
          },
          child: SpecializationItem(
            specializationData: specializationDataList[index]!,
            index: index,
            selectedIndex: selectedSpecializationIndex,
          ),
        ),
        separatorBuilder: (context, index) => horizontalSpace(25),
        itemCount: specializationDataList!.length,
      ),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
