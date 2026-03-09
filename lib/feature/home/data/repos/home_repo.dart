import 'package:flutter_projects/core/networking/api_error_handler.dart';
import 'package:flutter_projects/core/networking/api_result.dart';
import '../apis/home_api_service.dart';
import '../models/doctors_response_model.dart';
import '../models/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);
  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
  Future<ApiResult<DoctorsResponseModel>> getDoctors() async {
    try {
      final response = await _homeApiService.getDoctors();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
  }
