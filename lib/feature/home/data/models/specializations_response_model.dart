
import 'package:freezed_annotation/freezed_annotation.dart';
part 'specializations_response_model.g.dart';
@JsonSerializable()
class SpecializationsResponseModel {
  String? message;
  @JsonKey(name: 'data')
  List<SpecializationsModelData>? data;
  SpecializationsResponseModel({this.message, this.data});
  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) => _$SpecializationsResponseModelFromJson(json);

}

@JsonSerializable()
class SpecializationsModelData {
  int? id;
  String? name;
  List<DoctorsModelData>? doctors;
  SpecializationsModelData({this.id, this.name, this.doctors});
  factory SpecializationsModelData.fromJson(Map<String, dynamic> json) => _$SpecializationsModelDataFromJson(json);

}

@JsonSerializable()
class DoctorsModelData {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  @JsonKey(name: 'appoint_price')
  int? price;
  String? degree;

  DoctorsModelData(this.id, this.name, this.email, this.phone, this.photo, this.gender, this.price, this.degree);
  factory DoctorsModelData.fromJson(Map<String, dynamic> json) => _$DoctorsModelDataFromJson(json);

}