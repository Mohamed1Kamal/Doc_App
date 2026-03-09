import 'package:flutter_projects/feature/home/data/models/doctors_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_search_response_model.g.dart';

@JsonSerializable()
class DoctorSearchResponseModel {
  String? message;
  List<DoctorsData>? data;
  DoctorSearchResponseModel({this.message, this.data});
  factory DoctorSearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorSearchResponseModelFromJson(json);
}
