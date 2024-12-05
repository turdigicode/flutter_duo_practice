import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF195E32);
  static const Color secondary = Color(0xFF5B9F2E);
  static const Color background = Color(0xFF153A16);
  static const Color text = Color(0xFFE5EBEA);
}


class AppFontSizes {
  static const double title = 24.0;
  static const double body = 14.0;
  static const double small = 12.0;
}


class AppSpacing {
  static const double large = 24.0;
  static const double medium = 16.0;
  static const double small = 8.0;
}


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
    color: Color(0xFFD32C16),
    fontSize: AppFontSizes.small,
    fontWeight: FontWeight.bold,
  );
}
