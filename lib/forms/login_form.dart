import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_button_styles.dart';
import 'package:flutter_duo_practice/constants/app_text_styles.dart';

import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

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
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Введіть Вашу пошту',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: AppColors.secondary
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: AppColors.secondary,
                      width: 2.0,
                    ),
                  ),
                  hintStyle: AppTextStyles.buttonSecondary,
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: AppColors.error,
                      width: 2.0,
                    ),
                  ),
                  errorStyle: const TextStyle(
                    color: AppColors.text,
                    fontSize: 12.0,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Будь ласка, введіть коректно Вашу пошту.';
                  }
                  return null;
                },
                style: AppTextStyles.form,
              ),
              const SizedBox(height: AppSpacing.medium),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Введіть Вашу пошту',
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(
                    color: AppColors.text,
                    fontSize: 14.0,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Будь ласка, введіть коректно Ваш пароль.';
                  }
                  return null;
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
                child: const Text('Увійти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}