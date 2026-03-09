import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/networking/api_result.dart';
import 'package:flutter_projects/feature/search_doctors/data/repo/search_doctors_repo.dart';
import 'package:flutter_projects/feature/search_doctors/logic/cubit/search_doctors_state.dart';

class SearchDoctorsCubit extends Cubit<SearchDoctorsState> {
  final SearchDoctorsRepo _searchDoctorsRepo;
  SearchDoctorsCubit(this._searchDoctorsRepo)
    : super(SearchDoctorsState.searchDoctorsInitial());
  void searchDoctors(String query) async {
    emit(SearchDoctorsState.searchDoctorsLoading());
    final response = await _searchDoctorsRepo.searchDoctors(query);
    response.when(
      success: (doctorSearchResponseModel) {
        emit(
          SearchDoctorsState.searchDoctorsSuccess(
            doctorSearchResponseModel.data,
          ),
        );
      },
      failure: (error) {
        emit(
          SearchDoctorsState.searchDoctorsFailure(
            error.apiErrorModel.message ?? "Error Message",
          ),
        );
      },
    );
  }

  static SearchDoctorsCubit get(context) => BlocProvider.of(context);
}
