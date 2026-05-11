import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/networking/api_result.dart';
import 'package:flutter_projects/feature/home/data/models/specializations_response_model.dart';
import 'package:flutter_projects/feature/home/data/repos/home_repo.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeStates.initial());

  

  /// list of specialization doctors same list of specialiazation order of api result
  List<List<DoctorsModelData>?> doctors = [];
  void getSpecializationsDate() async {
    emit(HomeStates.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (specializationsResponseModel) {
        emit(
          HomeStates.specializationsSuccess(specializationsResponseModel.data),
        );
        doctors = specializationsResponseModel.data!
            .map((e) => e.doctors)
            .toList();
            // get doctors of first specialization by default.
            getDoctorsByIdSpecilization(0);
      },
      failure: (error) {
        emit(
          HomeStates.specializationsError(
            error.apiErrorModel.message ?? "Error Message",
          ),
        );
      },
    );
  }

  void getDoctorsByIdSpecilization(int specializationId) {
    if (doctors != []) {
      emit(HomeStates.specializationDoctorsSuccess(doctors[specializationId]));
    }
    else {
      emit(const HomeStates.specializationDoctorsError("No doctors found for this specialization"));
    }
  }
}
