import 'package:dio/dio.dart';
import 'package:flutter_projects/core/networking/api_constants.dart';
import 'package:flutter_projects/feature/search_doctors/data/apis/api_constants.dart';
import 'package:flutter_projects/feature/search_doctors/data/models/doctor_search_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SearchDoctorsApiService {
  factory SearchDoctorsApiService(Dio dio) = _SearchDoctorsApiService;
  @GET(ApiSearchDoctorsConstants.searchDoctorsApiEP)
  Future<DoctorSearchResponseModel> searchDoctors(@Query('name') String query);
}
