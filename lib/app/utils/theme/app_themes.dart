import 'package:flutter/material.dart';
import 'package:your_book/app/utils/theme/app_colors.dart';

class AppTheme {
  static ThemeData get defaultTheme => ThemeData(
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.accentColorColor,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      );
}
