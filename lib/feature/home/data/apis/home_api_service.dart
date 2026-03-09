import 'package:dio/dio.dart';
import 'package:flutter_projects/feature/home/data/models/doctors_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../../../core/networking/api_constants.dart';
import '../models/specializations_response_model.dart';
import 'home_api_constants.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.homeSpecializationApiEP)
  Future<SpecializationsResponseModel> getSpecialization();

  @GET(HomeApiConstants.homeDoctorsApiEP)
  Future<DoctorsResponseModel> getDoctors();

}


