import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_font_sizes.dart';

class AppTextStyles {
  static const TextStyle title = TextStyle(
    color: AppColors.text,
    fontSize: AppFontSizes.title,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle body = TextStyle(
    color: AppColors.text,
    fontSize: AppFontSizes.body,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle error = TextStyle(
    color: AppColors.error,
    fontSize: AppFontSizes.small,
    fontWeight: FontWeight.bold,
  );
}