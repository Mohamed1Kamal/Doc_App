import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/widgets/app_text_button.dart';
import 'package:flutter_projects/core/widgets/app_text_form.dart';
import 'package:flutter_projects/feature/register/ui/widgets/password_confirmation_field.dart';
import 'package:flutter_projects/feature/register/ui/widgets/password_field.dart';
import 'package:flutter_projects/feature/register/ui/widgets/phone_number_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/cubit/cubit.dart';
import '../../logic/cubit/states.dart';
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
        // TODO: implement listener
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
                  Text('Create Account', style: TextStylesApp.font24BlueBold),
                  verticalSpace(8),
                  Text(
                    'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                    style: TextStylesApp.font14GrayRegular,
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
                       EmailTextFormField(controller: cubit.emailController,),
                       verticalSpace(16),
                       GenderSelector(
                         onGenderChanged: (int value) { 
                           cubit.gender = value;
                           print("Gender selected in Cubit: ${cubit.gender}");
                         },
                       ),
                       verticalSpace(16),
                       PhoneNumberField(controller: cubit.phoneController),
                       verticalSpace(16),
                       PasswordField(controller: cubit.passwordController, passwordFocusNode: cubit.passwordFocusNode,),
                       verticalSpace(16),
                       PasswordConfirmationField(
                         passwordController: cubit.passwordController,
                       ),
                       verticalSpace(45),
                       AppTextButton(
                         buttonText: "Create Account",
                         textStyle: TextStylesApp.font16WhiteMedium,
                         onPressed: (){
                           if(cubit.formKey.currentState!.validate()){
                             print('validated');
                             //cubit.userRegister();
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
