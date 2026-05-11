import 'dart:core' as debug;
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/widgets/app_text_button.dart';
import 'package:flutter_projects/core/widgets/app_text_form.dart';
import 'package:flutter_projects/feature/register/data/models/register_request_body.dart';
import 'package:flutter_projects/feature/register/ui/widgets/password_confirmation_field.dart';
import 'package:flutter_projects/feature/register/ui/widgets/password_field.dart';
import 'package:flutter_projects/feature/register/ui/widgets/phone_number_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/cubit/cubit.dart';
import '../../logic/cubit/register_states.dart';
import 'email_text_form_field.dart';
import 'gender_selector.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterStates>(
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Registration Success!"),
                backgroundColor: Colors.green,
              ),
            );
            Navigator.of(context).pop();
          },
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error), backgroundColor: Colors.red),
            );
          },
        );
      },
      builder: (context, state) {
        RegisterCubit cubit = RegisterCubit.get(context);
        return SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create Account', style: AppTextStyles.font24BlueBold),
                  verticalSpace(8),
                  Text(
                    'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                    style: AppTextStyles.font14GrayRegular,
                  ),
                  verticalSpace(36),
                  Form(
                    key: cubit.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // User Name
                        AppTextFormField(
                          controller: cubit.nameController,
                          hintText: 'User name',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your user name';
                            }
                            return null;
                          },
                        ),
                        verticalSpace(16),
                        // Email
                        EmailTextFormField(controller: cubit.emailController),
                        verticalSpace(16),
                        GenderSelector(
                          onGenderChanged: (int value) {
                            cubit.gender = value.toString();
                            debug.print('Register : gender: ${cubit.gender}');
                          },
                        ),
                        verticalSpace(16),
                        PhoneNumberField(controller: cubit.phoneController),
                        verticalSpace(16),
                        PasswordField(
                          controller: cubit.passwordController,
                          passwordFocusNode: cubit.passwordFocusNode,
                        ),
                        verticalSpace(16),
                        PasswordConfirmationField(
                          passwordController: cubit.passwordController,
                          passwordConfirmationController: cubit.passwordConfirmationController,
                        ),
                        verticalSpace(45),
                        AppTextButton(
                          buttonText: "Create Account",
                          textStyle: AppTextStyles.font16WhiteMedium,
                          onPressed: () {
                            if (cubit.formKey.currentState!.validate()) {
                              RegisterRequestBody registerRequestBody =
                                  RegisterRequestBody(
                                name: cubit.nameController.text,
                                email: cubit.emailController.text,
                                phone: cubit.phoneController.text,
                                password: cubit.passwordController.text,
                                gender: cubit.gender,
                                passwordConfirmation: cubit.passwordConfirmationController.text,
                                  );
                                  debug.print("=== MY API DATA ===");
                                  debug.print(registerRequestBody.toJson());
                              cubit.register(registerRequestBody);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
