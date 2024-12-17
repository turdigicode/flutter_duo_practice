import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_button_styles.dart';
import 'package:flutter_duo_practice/constants/app_form_styles.dart';
import '../../../constants/app_spacing.dart';
import 'custom_fields/custom_password_field.dart';
import 'custom_fields/custom_text_field.dart';
import 'input_validators/email_validator.dart';
import 'input_validators/name_validator.dart';
import 'input_validators/password_validator.dart';

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

  final Map<String, bool> _inputStatus = {
    'isWrongInputName': false,
    'isWrongInputEmail': false,
    'isWrongInputPassword': false,
    'isWrongInputPasswordConfirmation': false,
    'isObscured': true,
  };

  final Map<String, String> _userData = {
    'userName': 'null',
    'userEmail': 'null',
    'userPassword': 'null',
  };

  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _toggleVisibility() {
    setState(() {
      _inputStatus['isObscured'] = !_inputStatus['isObscured']!;
    });
  }

  void _onRegisterPressed(){
    setState(() {});
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
      setState(() {
        _userData['userName'] = _userNameController.text;
        _userData['userEmail'] = _emailController.text;
        _userData['userPassword'] = _passwordController.text;
      });
    }
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
              CustomTextField(
                  labelText: "Введіть Ваше ім'я",
                  validator: (value) => NameValidator.validate(value, _inputStatus),
                  isError: _inputStatus['isWrongInputName'] ?? false,
              ),

              const SizedBox(height: AppSpacing.medium),

              //Email Field
              CustomTextField(
                labelText: "Введіть Вашу пошту",
                validator: (value) => EmailValidator.validate(value, _inputStatus),
                isError: _inputStatus['isWrongInputEmail'] ?? false,
                controller: _emailController,
              ),

              const SizedBox(height: AppSpacing.medium),

              //First Password Field
              CustomPasswordField(
                labelText: "Введіть Ваш пароль",
                validator: (value) {
                  _userData['password'] = value ?? "";
                  return PasswordValidator.validate(value, _inputStatus);
                },
                isError: _inputStatus['isWrongInputPassword'] ?? false,
                isObscured: _inputStatus['isObscured'] ?? false,
                onVisibilityToggle: _toggleVisibility,
              ),

              const SizedBox(height: AppSpacing.medium),

              //Password Confirmation Field
              CustomPasswordField(
                labelText: "Введіть Ваш пароль",
                validator: (value) => PasswordValidator.compare(value, _userData['password'], _inputStatus),
                isError: _inputStatus['isWrongInputPasswordConfirmation'] ?? false,
                isObscured: _inputStatus['isObscured'] ?? false,
                onVisibilityToggle: _toggleVisibility,
              ),

              const SizedBox(height: AppSpacing.medium),

              ElevatedButton(
                onPressed: _onRegisterPressed,
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