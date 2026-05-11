import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/networking/api_result.dart';
import 'package:flutter_projects/feature/login/logic/cubit/login_states.dart';
import '../../data/models/login_request_body.dart';
import '../../data/repos/login_repo.dart';

class LoginCubit extends Cubit<LoginStates> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginStates.init());

  static LoginCubit get(context) => BlocProvider.of(context);
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login(LoginRequestBody loginRequestBody)async {
    emit(LoginStates.loading());
    var response = await loginRepo.login(loginRequestBody);
    response.when(
      success: (data) => emit(LoginStates.success(data)),
      failure: (error) => emit(LoginStates.error(error.apiErrorModel.message ?? " Error")),
    );
  }

}
