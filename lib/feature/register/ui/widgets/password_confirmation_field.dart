import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/app_regex.dart';
import '../../../../core/widgets/app_text_form.dart';

class PasswordConfirmationField extends StatefulWidget {
  const PasswordConfirmationField({super.key, required this.passwordController});
  final  TextEditingController passwordController;


  @override
  State<PasswordConfirmationField> createState() => _PasswordConfirmationFieldState();
}

class _PasswordConfirmationFieldState extends State<PasswordConfirmationField> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
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
      hintText: 'Password Confirmation',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password confirmation is required';
        }
        if (value != widget.passwordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },

    );
  }
}
