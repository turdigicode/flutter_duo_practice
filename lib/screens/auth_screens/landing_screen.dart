import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_button_styles.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';
import 'package:flutter_duo_practice/constants/app_images_paths.dart';
import 'package:flutter_duo_practice/constants/app_spacing.dart';
import 'package:flutter_duo_practice/screens/auth_screens/registration_screen.dart';
import '../../constants/app_text_styles.dart';
import 'login_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("Вітаємо", style: AppTextStyles.title),
      ),
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
            AppImagesPaths.plantPicture,
              width: 250,
              height: 250,
            ),
            const SizedBox(height: AppSpacing.small),
            Text(
              'Почнімо медитувати вже сьогодні.',
              style: AppTextStyles.title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.large),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegistrationScreen()),
                  );
                },
                style: AppButtonStyles.primary,
                child: const Text('Зареєструватися')
            ),
            const SizedBox(height: AppSpacing.small),
            TextButton(
                onPressed: () {
                  Navigator.push(
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