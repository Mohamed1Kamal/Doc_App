
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/specializations_response_model.dart';

part 'home_states.freezed.dart';
@freezed
class HomeStates<T> with _$HomeStates<T> {
  const factory HomeStates.initial() = _Initial;
  // Specializations
  const factory HomeStates.specializationsLoading() = SpecializationsLoading;
  const factory HomeStates.specializationsSuccess(List<SpecializationsModelData?>? specializationDataList) = SpecializationsSuccess;
  const factory HomeStates.specializationsError(String error) = SpecializationsError;
  // Doctors
  const factory HomeStates.specializationDoctorsSuccess(List<DoctorsModelData?>? doctorsList) = DoctorsSuccess;
  const factory HomeStates.specializationDoctorsError(String error) = DoctorsError;


}
