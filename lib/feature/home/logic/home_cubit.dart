import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/networking/api_result.dart';
import 'package:flutter_projects/feature/home/data/repos/home_repo.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeStates.initial());

  void getDoctorsDate() async {
    emit(HomeStates.doctorsLoading());
    final response = await _homeRepo.getDoctors();
    response.when(
      success: (doctorsResponseModel) {
        emit(HomeStates.doctorsSuccess(doctorsResponseModel.data));
      },
      failure: (error) {
        emit(
          HomeStates.doctorsError(
            error.apiErrorModel.message ?? "Error Message",
          ),
        );
      },
    );
  }

  void getSpecializationsDate() async {
    emit(HomeStates.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (specializationsResponseModel) {
        emit(
          HomeStates.specializationsSuccess(specializationsResponseModel.data),
        );
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
}
