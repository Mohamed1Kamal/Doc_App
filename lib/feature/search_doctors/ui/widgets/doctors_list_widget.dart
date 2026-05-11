import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/helper/spacing.dart';
import 'package:flutter_projects/feature/home/ui/widgets/doctor_list_section/doctor_item.dart';
import 'package:flutter_projects/feature/search_doctors/logic/cubit/search_doctors_cubit.dart';
import 'package:flutter_projects/feature/search_doctors/logic/cubit/search_doctors_state.dart';

class DoctorsListWidget extends StatelessWidget {
  const DoctorsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchDoctorsCubit, SearchDoctorsState>(
      buildWhen: (previousState, currentState) => currentState.maybeWhen(
        searchDoctorsInitial: () => true,
        searchDoctorsLoading: () => true,
        searchDoctorsSuccess: (_) => true,
        searchDoctorsFailure: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.maybeWhen(
          searchDoctorsInitial: () {
            return setupInitial();
          },
          searchDoctorsLoading: () {
            return setupLoading();
          },
          searchDoctorsSuccess: (doctorsList) {
            return setupSuccess(doctorsList);
          },
          searchDoctorsFailure: (error) {
            return setupError(error);
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupError(String error) {
    return Center(child: Text(error));
  }

  Widget setupInitial() {
    return const Center(child: Text("Search for doctors"));
  }

  Widget setupLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget setupSuccess(List? doctorsList) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          DoctorItem(doctorsData: doctorsList[index]),
      separatorBuilder: (context, index) => verticalSpace(15),
      itemCount: doctorsList!.length,
    );
  }
}
