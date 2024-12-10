import 'package:flutter/material.dart';
import 'package:flutter_duo_practice/constants/app_colors.dart';
import 'package:flutter_duo_practice/constants/app_text_styles.dart';

class AppButtonStyles{

  static final ButtonStyle primary = ElevatedButton.styleFrom(
    backgroundColor: AppColors.secondary,
    foregroundColor: AppColors.secondaryText,
    textStyle: AppTextStyles.buttonPrimary,
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
  );

  static final ButtonStyle secondary = ElevatedButton.styleFrom(
    backgroundColor: AppColors.background,
    foregroundColor: AppColors.secondary,
    textStyle: AppTextStyles.buttonSecondary,
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
    side: const BorderSide(
      color: AppColors.secondary,
      width: 2.0,
      style: BorderStyle.solid,
    ),
  );

}
