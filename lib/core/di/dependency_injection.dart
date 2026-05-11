import 'package:dio/dio.dart';
import 'package:flutter_projects/core/networking/api_service.dart';
import 'package:flutter_projects/core/networking/dio_factory.dart';
import 'package:flutter_projects/feature/home/data/apis/home_api_service.dart';
import 'package:flutter_projects/feature/login/data/repos/login_repo.dart';
import 'package:flutter_projects/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_projects/feature/register/data/apis/register_api_service.dart';
import 'package:flutter_projects/feature/search_doctors/data/apis/api_service.dart';
import 'package:flutter_projects/feature/search_doctors/data/repo/search_doctors_repo.dart';
import 'package:get_it/get_it.dart';

import '../../feature/home/data/repos/home_repo.dart';
import '../../feature/register/data/repos/register_repo.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  //Dio and ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  //home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

  //search doctors
  getIt.registerLazySingleton<SearchDoctorsApiService>(
    () => SearchDoctorsApiService(dio),
  );
  getIt.registerLazySingleton<SearchDoctorsRepo>(
    () => SearchDoctorsRepo(getIt()),
  );

  //register
  getIt.registerLazySingleton<RegisterApiService>(()=> RegisterApiService(dio));
  getIt.registerLazySingleton<RegisterRepo>(()=> RegisterRepo(getIt()));
}
