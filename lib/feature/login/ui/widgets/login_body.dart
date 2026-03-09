import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/helper/constants.dart';
import 'package:flutter_projects/core/helper/shared_pref_helper.dart';
import 'package:flutter_projects/core/networking/dio_factory.dart';
import 'package:flutter_projects/core/theming/styles.dart';
import 'package:flutter_projects/feature/login/ui/widgets/email_and_password.dart';
import 'package:flutter_projects/feature/login/ui/widgets/terms_conditions_tex.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../data/models/login_request_body.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_states.dart';
import 'already_have_acount_text.dart';
import 'build_social_buttons_row.dart';
import 'divider_with_sign_text.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Login Success!"),
                backgroundColor: Colors.green,
              ),
            );
            Navigator.of(context).pushNamed(Routes.homeScreen);
            SharedPrefHelper.setSecuredString(
              SharedPrefKeys.userToken,
              data.userData?.token ?? '',
            );
            DioFactory.setTokenIntoHeaderAfterLogin(data.userData?.token ?? '');
          },
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error), backgroundColor: Colors.red),
            );
          },
        );
      },
      builder: (context, state) {
        LoginCubit cubit = LoginCubit.get(context);
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStylesApp.font24BlueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStylesApp.font14GrayRegular,
                ),
                verticalSpace(36),
                EmailAndPassword(),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStylesApp.font12BlueRegular,
                    ),
                  ),
                ),
                verticalSpace(30),
                state.maybeWhen(
                  loading: () => Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue, // Match your app theme
                    ),
                  ),
                  orElse: () {
                    return AppTextButton(
                      buttonText: 'login',
                      textStyle: TextStylesApp.font16WhiteSemiBold,
                      onPressed: () {
                        if (cubit.formKey.currentState!.validate()) {
                          cubit.login(
                            LoginRequestBody(
                              email: cubit.emailController.text,
                              password: cubit.passwordController.text,
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
                verticalSpace(46),
                DividerWithSignText(),
                verticalSpace(40),
                BuildSocialButtonsRow(),
                verticalSpace(46),
                TermsAndConditionsText(),
                verticalSpace(24),
                AlreadyHaveAcountText(),
              ],
            ),
          ),
        );
      },
    );
  }
}
