import 'package:flutter_projects/feature/login/data/models/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_states.freezed.dart';

@freezed
class LoginStates<T> with _$LoginStates<T> {
  const factory LoginStates.error(String error) = Error<T>;
  const factory LoginStates.init() = _Init<T>;
  const factory LoginStates.loading() = Loading<T>;
  const factory LoginStates.success(LoginResponse data) = Success;
}
