import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/doctors_response_model.dart';
import '../data/models/specializations_response_model.dart';

part 'home_states.freezed.dart';
@freezed
class HomeStates with _$HomeStates {
  const factory HomeStates.initial() = _Initial;
  // Specializations
  const factory HomeStates.specializationsLoading() = SpecializationsLoading;
  const factory HomeStates.specializationsSuccess(List<SpecializationsModelData?>? specializationDataList) = SpecializationsSuccess;
  const factory HomeStates.specializationsError(String error) = SpecializationsError;
  // Doctors
  const factory HomeStates.doctorsLoading() = DoctorsLoading;
  const factory HomeStates.doctorsSuccess(List<DoctorsData>? doctorsList) = DoctorsSuccess;
  const factory HomeStates.doctorsError(String error) =  DoctorsError;


}
