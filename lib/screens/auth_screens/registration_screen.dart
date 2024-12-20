import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_button_styles.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';
import 'package:flutter_duo_practice/constants/app_spacing.dart';
import '../../constants/app_text_styles.dart';
import 'forms/registration_form.dart';
import 'login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("Зареєструватися", style: AppTextStyles.title),
      ),
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Введіть свої дані для реєстрації.',
              style: AppTextStyles.title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.large),
            const RegistrationForm(),
            const SizedBox(height: AppSpacing.large),
            Text(
              'Вже маєте акаунт?',
              style: AppTextStyles.body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.small),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                style: AppButtonStyles.secondary,
                child: const Text('Увійти')
            ),
          ],
        ),
      ),
    );
  }
}