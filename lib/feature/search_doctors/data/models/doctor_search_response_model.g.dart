// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorSearchResponseModel _$DoctorSearchResponseModelFromJson(
  Map<String, dynamic> json,
) => DoctorSearchResponseModel(
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => DoctorsData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DoctorSearchResponseModelToJson(
  DoctorSearchResponseModel instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};
