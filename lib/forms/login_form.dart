import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_button_styles.dart';
import 'package:flutter_duo_practice/constants/app_text_styles.dart';
import 'package:flutter_duo_practice/constants/app_form_styles.dart';
import '../constants/app_spacing.dart';
import '../input_validators/email_validator.dart';
import '../input_validators/password_validator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final appFormStyles = AppFormStyles();
  final _formKey = GlobalKey<FormState>();

  bool _isWrongInputEmail = false;
  bool _isWrongInputPassword = false;
  bool _isObscured = true;

  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[

              //Email Field
              TextFormField(
              decoration: appFormStyles.formInputDecorationDefault(
              labelText: "Введіть Вашу пошту",
              isError: _isWrongInputEmail
          ),
                validator: (value) {
                  if (value != null && EmailValidator.validate(value)) {
                    setState(() {
                      _isWrongInputEmail = false;
                    });
                    return null;
                  }
                  setState(() {
                    _isWrongInputEmail = true;
                  });
                  return 'Будь ласка, введіть коректну пошту.';
                },
                style: AppTextStyles.form,
              ),

              const SizedBox(height: AppSpacing.medium),

              //Password Field
              TextFormField(
                decoration: appFormStyles.formInputDecorationPassword(
                    labelText: "Введіть Ваш пароль",
                    isError: _isWrongInputPassword,
                    isObscured: _isObscured,
                    onVisibilityToggle: _toggleVisibility
                ),
                obscureText: _isObscured,
                validator: (value) {
                  if (value != null && PasswordValidator.validate(value)) {
                    setState(() {
                      _isWrongInputPassword = false;
                    });
                    return null;
                  }
                  setState(() {
                    _isWrongInputPassword = true;
                  });
                  return 'Будь ласка, введіть коректний пароль.';
                },
                style: AppTextStyles.form,
              ),
              const SizedBox(height: AppSpacing.medium),

              //Confirmation Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                style: AppButtonStyles.primary,
                child: const Text('Увійти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}