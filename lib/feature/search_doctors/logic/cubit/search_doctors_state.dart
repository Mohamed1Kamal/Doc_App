import 'package:flutter_projects/feature/home/data/models/doctors_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_doctors_state.freezed.dart';

@freezed
class SearchDoctorsState with _$SearchDoctorsState {
  const factory SearchDoctorsState.searchDoctorsFailure(String error) =
      SearchDoctorsFailure;
  const factory SearchDoctorsState.searchDoctorsInitial() =
      SearchDoctorsInitial;
  const factory SearchDoctorsState.searchDoctorsLoading() =
      SearchDoctorsLoading;
  const factory SearchDoctorsState.searchDoctorsSuccess(
    List<DoctorsData>? doctors,
  ) = SearchDoctorsSuccess;
}
