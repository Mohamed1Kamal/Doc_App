
import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';
@JsonSerializable()
class RegisterRequestBody {
  final String name;
  final String email;
  final String password;
  final String phone;
  /// gender in API is String 0 male and 1 female
  final String gender;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  RegisterRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.gender,
    required this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}



