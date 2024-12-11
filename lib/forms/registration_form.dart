import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_button_styles.dart';
import 'package:flutter_duo_practice/constants/app_text_styles.dart';
import 'package:flutter_duo_practice/constants/app_form_styles.dart';
import 'package:flutter_duo_practice/input_validators/email_validator.dart';
import 'package:flutter_duo_practice/input_validators/name_validator.dart';
import 'package:flutter_duo_practice/input_validators/password_validator.dart';
import '../constants/app_spacing.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  RegistrationFormState createState() {
    return RegistrationFormState();
  }
}

class RegistrationFormState extends State<RegistrationForm> {
  final appFormStyles = AppFormStyles();
  final _formKey = GlobalKey<FormState>();

  bool _isWrongInputName = false;
  bool _isWrongInputEmail = false;
  bool _isWrongInputPassword = false;
  bool _isWrongInputPasswordConfirmation = false;
  bool _isObscured = true;

  String _userPassword = 'null';

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

              //Name Field
              TextFormField(
                decoration: appFormStyles.formInputDecorationDefault(
                    labelText: "Введіть Ваше ім'я",
                    isError: _isWrongInputName
                ),
                validator: (value) {
                  if (value != null && NameValidator.validate(value)) {
                    setState(() {
                      _isWrongInputName = false;
                    });
                    return null;
                  }
                  setState(() {
                    _isWrongInputName = true;
                  });
                  return "Будь ласка, введіть коректне ім'я користувача.";

                },
                style: AppTextStyles.form,
              ),

              const SizedBox(height: AppSpacing.medium),

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
                  return "Будь ласка, введіть коректну пошту.";
                },
                style: AppTextStyles.form,
              ),

              const SizedBox(height: AppSpacing.medium),

              //First Password Field
              TextFormField(
                decoration: appFormStyles.formInputDecorationPassword(
                    labelText: "Введіть пароль (від 8 символів)",
                    isError: _isWrongInputPassword,
                    isObscured: _isObscured,
                    onVisibilityToggle: _toggleVisibility
                ),
                obscureText: _isObscured,
                validator: (value) {
                  if (value != null && PasswordValidator.validate(value)) {
                    setState(() {
                      _isWrongInputPassword = false;
                      _userPassword = value;
                    });
                    return null;
                  }
                  setState(() {
                    _isWrongInputPassword = true;
                  });
                  return "Будь ласка, введіть коректний пароль.";

                },
                style: AppTextStyles.form,
              ),

              const SizedBox(height: AppSpacing.medium),

              //Password Confirmation Field
              TextFormField(
                decoration: appFormStyles.formInputDecorationPassword(
                    labelText: "Підтвердіть Ваш пароль",
                    isError: _isWrongInputPasswordConfirmation,
                    isObscured: _isObscured,
                    onVisibilityToggle: _toggleVisibility
                ),
                obscureText: _isObscured,
                validator: (value) {
                  if (value == _userPassword) {
                    setState(() {
                      _isWrongInputPasswordConfirmation = false;
                    });
                    return null;
                  }
                  setState(() {
                    _isWrongInputPasswordConfirmation = true;
                  });
                  return "Будь ласка, повторіть свій пароль.";
                },
                style: AppTextStyles.form,
              ),
              const SizedBox(height: AppSpacing.medium),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                style: AppButtonStyles.primary,
                child: const Text('Зареєструватися'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}