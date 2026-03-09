import 'package:flutter_projects/core/networking/api_error_handler.dart';
import 'package:flutter_projects/core/networking/api_result.dart';
import 'package:flutter_projects/feature/search_doctors/data/apis/api_service.dart';
import 'package:flutter_projects/feature/search_doctors/data/models/doctor_search_response_model.dart';

class SearchDoctorsRepo {
  final SearchDoctorsApiService _searchDoctorsApiService;
  SearchDoctorsRepo(this._searchDoctorsApiService);

  Future<ApiResult<DoctorSearchResponseModel>> searchDoctors(
    String query,
  ) async {
    try {
      final response = await _searchDoctorsApiService.searchDoctors(query);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
