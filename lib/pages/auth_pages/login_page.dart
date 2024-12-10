import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_button_styles.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';
import 'package:flutter_duo_practice/constants/app_spacing.dart';
import 'package:flutter_duo_practice/pages/auth_pages/registration_page.dart';
import '../../constants/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(widget.title, style: AppTextStyles.title),
      ),
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Увійти в існуючий акаунт.',
              style: AppTextStyles.title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.large),

            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage(title: '')),
                  );
                },
                style: AppButtonStyles.primary,
                child: const Text('Увійти')
            ),
            const SizedBox(height: AppSpacing.large),
            Text(
              'Ще не маєте акаунту?',
              style: AppTextStyles.body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.small),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const RegistrationPage(title: 'Зареєструйтеся')),
                  );
                },
                style: AppButtonStyles.secondary,
                child: const Text('Зареєструватися')
            ),
          ],
        ),
      ),
    );
  }
}