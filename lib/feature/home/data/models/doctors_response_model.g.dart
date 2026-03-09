// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsResponseModel _$DoctorsResponseModelFromJson(
  Map<String, dynamic> json,
) => DoctorsResponseModel(
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => DoctorsData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DoctorsResponseModelToJson(
  DoctorsResponseModel instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};

DoctorsData _$DoctorsDataFromJson(Map<String, dynamic> json) => DoctorsData(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  photo: json['photo'] as String?,
  gender: json['gender'] as String?,
  degree: json['degree'] as String?,
  price: (json['appoint_price'] as num?)?.toInt(),
);

Map<String, dynamic> _$DoctorsDataToJson(DoctorsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'degree': instance.degree,
      'appoint_price': instance.price,
    };
