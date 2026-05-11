import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/feature/register/logic/cubit/register_states.dart';

import '../../../../core/networking/api_result.dart';
import '../../data/models/register_request_body.dart';
import '../../data/repos/register_repo.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(RegisterStates.init());

  static RegisterCubit get(context) => BlocProvider.of(context);
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  String gender = "0"; //gender is int value in API

  void register(RegisterRequestBody registerRequestBody)async{
    emit(RegisterStates.loading());
    var response = await _registerRepo.register(registerRequestBody);
    response.when(
      success: (data) => emit(RegisterStates.success(data)),
      failure: (error) => emit(RegisterStates.error(error.apiErrorModel.message ?? " Error")),
    );

  }
}
