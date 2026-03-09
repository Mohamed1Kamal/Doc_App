// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specializations_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationsResponseModel _$SpecializationsResponseModelFromJson(
  Map<String, dynamic> json,
) => SpecializationsResponseModel(
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => SpecializationsModelData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SpecializationsResponseModelToJson(
  SpecializationsResponseModel instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};

SpecializationsModelData _$SpecializationsModelDataFromJson(
  Map<String, dynamic> json,
) => SpecializationsModelData(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  doctors: (json['doctors'] as List<dynamic>?)
      ?.map((e) => DoctorsModelData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SpecializationsModelDataToJson(
  SpecializationsModelData instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'doctors': instance.doctors,
};

DoctorsModelData _$DoctorsModelDataFromJson(Map<String, dynamic> json) =>
    DoctorsModelData(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['photo'] as String?,
      json['gender'] as String?,
      (json['appoint_price'] as num?)?.toInt(),
      json['degree'] as String?,
    );

Map<String, dynamic> _$DoctorsModelDataToJson(DoctorsModelData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'appoint_price': instance.price,
      'degree': instance.degree,
    };
