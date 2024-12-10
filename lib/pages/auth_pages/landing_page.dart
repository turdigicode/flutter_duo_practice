import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_button_styles.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';
import 'package:flutter_duo_practice/constants/app_spacing.dart';
import 'package:flutter_duo_practice/pages/auth_pages/login_page.dart';
import 'package:flutter_duo_practice/pages/auth_pages/registration_page.dart';
import '../../constants/app_text_styles.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing page',
      theme: ThemeData(
        textTheme: TextTheme(
        bodyLarge: AppTextStyles.body,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      home: const LandingPage(title: 'Вітаємо'),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});

  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

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
            Image.asset(
              'assets/images/plant_picture.png',
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
                    MaterialPageRoute(builder: (context) => const RegistrationPage(title: 'Зареєструйтеся')),
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
                    MaterialPageRoute(builder: (context) => const LoginPage(title: 'Увійдіть')),
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