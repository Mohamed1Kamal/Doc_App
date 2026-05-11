import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/feature/home/data/models/specializations_response_model.dart';
import 'package:flutter_projects/feature/home/ui/widgets/doctor_list_section/doctors_shimmer_loading.dart';
import '../../../../../core/helper/spacing.dart';
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
          specializationsLoading: () => true,
          specializationDoctorsSuccess: (_) => true,
          specializationDoctorsError: (_) => true,
          orElse: () => false,
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationDoctorsSuccess: (doctorsList) {
            return setupSuccess(doctorsList);
          },
          specializationDoctorsError: (error) {
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
    return DoctorsShimmerLoading();
  }

  Widget setupSuccess(List<DoctorsModelData?>? doctorsList) {
    
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => DoctorItem(doctorsData: doctorsList[index]),
        separatorBuilder: (context, index) => verticalSpace(40),
        itemCount: doctorsList!.length,
      ),
    );
  }
}
