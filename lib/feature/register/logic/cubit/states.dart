abstract class RegisterStates{}
class InitRegisterState extends RegisterStates{}
class LoadingRegisterState extends RegisterStates{}
class SuccessRegisterState extends RegisterStates{}
class ErrorRegisterState extends RegisterStates{
  final String error;
  ErrorRegisterState(this.error);
}