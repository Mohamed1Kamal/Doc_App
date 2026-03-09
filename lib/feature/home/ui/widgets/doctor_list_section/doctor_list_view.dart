import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../data/models/doctors_response_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_states.dart';
import 'doctor_item.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      buildWhen: (previous, current) {
        return current.maybeWhen(
          doctorsLoading: () => true,
          doctorsSuccess: (_) => true,
          doctorsError: (_) => true,
          orElse: () => false,
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          doctorsLoading: () {
            return setupLoading();
          },
          doctorsSuccess: (doctorsList) {
            return setupSuccess(doctorsList);
          },
          doctorsError: (error) {
            return setupError();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

  Widget setupLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget setupSuccess(List<DoctorsData>? doctorsList) {
    int recommendedDoctors = doctorsList!.length > 6 ? 6 : doctorsList.length;
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            DoctorItem(doctorsData: doctorsList[index]),
        separatorBuilder: (context, index) => verticalSpace(40),
        itemCount: recommendedDoctors,
      ),
    );
  }
}
