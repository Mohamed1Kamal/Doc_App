import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/feature/register/logic/cubit/states.dart';

import '../../../../core/networking/api_constants.dart';
import '../../../../core/networking/dio_factory.dart';


class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(InitRegisterState());

  static RegisterCubit get(context) => BlocProvider.of(context);
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   FocusNode passwordFocusNode = FocusNode();
   int gender = 0; //gender is int value in API

  // void userRegister() {
  //   emit(LoadingRegisterState());
  //   DioHelper.postData(
  //     path: ApiConstants.registerUrl,
  //     data: {
  //       'name': nameController.text, 'phone': phoneController.text, 'email': emailController.text,
  //       'password': passwordController.text, 'gender': gender, 'password_confirmation': passwordController.text
  //     },
  //   ).then((value){
  //     print(value.data);
  //     emit(SuccessRegisterState());
  //   }).catchError((error){
  //     print(error);
  //     emit(ErrorRegisterState(error.toString()));
  //   });
  // }
}
