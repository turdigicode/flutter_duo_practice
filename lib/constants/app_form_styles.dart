import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';
import 'app_text_styles.dart';

class AppFormStyles{

  InputDecoration formInputDecorationDefault({
    required String labelText,
    required bool isError,
  }) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: isError ? AppColors.error : AppColors.secondary,
        fontWeight: FontWeight.bold,
      ),
      errorMaxLines: 2,
      border: _defaultBorder,
      enabledBorder: _defaultBorder,
      focusedBorder: _focusedBorder,
      errorBorder: _errorBorder,
      hintStyle: AppTextStyles.buttonSecondary,
      errorStyle: _errorStyle,
    );
  }

  InputDecoration formInputDecorationPassword({
    required String labelText,
    required bool isError,
    required bool isObscured,
    VoidCallback? onVisibilityToggle,
  }) {

    final baseDecoration = formInputDecorationDefault(
      labelText: labelText,
      isError: isError,
    );

    return baseDecoration.copyWith(
      suffixIcon: IconButton(
        icon: Icon(
          isObscured ? Icons.visibility_off : Icons.visibility,
          color: isError ? AppColors.error : AppColors.secondary,
        ),
        onPressed: onVisibilityToggle,
      ),
    );
  }

  static const OutlineInputBorder _defaultBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
    borderSide: BorderSide(
      color: AppColors.secondary,
      width: 1.0,
    ),
  );

  static const OutlineInputBorder _focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
    borderSide: BorderSide(
      color: AppColors.secondary,
      width: 3.0,
    ),
  );

  static const OutlineInputBorder _errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
    borderSide: BorderSide(
      color: AppColors.error,
      width: 2.0,
    ),
  );

  static const TextStyle _errorStyle = TextStyle(
    color: AppColors.text,
    fontSize: 12.0,
    fontFamily: AppFonts.fontFamily,
  );
}