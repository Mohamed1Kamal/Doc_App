import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctors_response_model.g.dart';
@JsonSerializable()
class DoctorsResponseModel {
  String? message;
  List<DoctorsData>? data;
  DoctorsResponseModel({this.message, this.data});
  factory DoctorsResponseModel.fromJson(Map<String, dynamic> json) => _$DoctorsResponseModelFromJson(json);


}

@JsonSerializable()
class DoctorsData {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? degree;
  @JsonKey(name: 'appoint_price')
  int? price;
  DoctorsData({this.id, this.name, this.email, this.phone, this.photo, this.gender, this.degree, this.price});
  factory DoctorsData.fromJson(Map<String, dynamic> json) => _$DoctorsDataFromJson(json);



}