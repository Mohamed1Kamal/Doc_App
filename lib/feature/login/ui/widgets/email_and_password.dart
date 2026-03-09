import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_form.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_states.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {

  bool isObscureText = true;


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        LoginCubit cubit = LoginCubit.get(context);
        return Form(
          key: cubit.formKey,
          child: Column(
            children: [
              AppTextFormField(
                controller: cubit.emailController,
                hintText: 'Email',
                validator: (value) {
                  if (value == null || value.isEmpty ) {
                    return 'Please enter your email';
                  }
                  if (!AppRegex.isEmailValid(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              verticalSpace(16),
              AppTextFormField(
                isObscureText: isObscureText,
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      isObscureText = !isObscureText;
                    });
                  },
                  icon: Icon(
                    isObscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                controller: cubit.passwordController,
                hintText: 'Password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },

              ),
            ],
          ),
        );
      }
    );
  }
}
