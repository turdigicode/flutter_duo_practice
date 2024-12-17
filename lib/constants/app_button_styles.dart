import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';
import 'package:flutter_duo_practice/constants/app_text_styles.dart';

class AppButtonStyles{

  static final ButtonStyle _base = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
  );

  static final ButtonStyle primary = _base.copyWith(
    backgroundColor: WidgetStateProperty.all(AppColors.secondary),
    foregroundColor: WidgetStateProperty.all(AppColors.secondaryText),
    textStyle: WidgetStateProperty.all(AppTextStyles.buttonPrimary),
  );

  static final ButtonStyle secondary = _base.copyWith(
    backgroundColor: WidgetStateProperty.all(AppColors.background),
    foregroundColor: WidgetStateProperty.all(AppColors.secondary),
    textStyle: WidgetStateProperty.all(AppTextStyles.buttonSecondary),
    side: WidgetStateProperty.all(
      const BorderSide(
        color: AppColors.secondary,
        width: 2.0,
        style: BorderStyle.solid,
      ),
    ),
  );
}
