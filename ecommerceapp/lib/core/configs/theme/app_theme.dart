import 'package:ecommerceapp/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light, 
    ),
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.secondaryColor,
      brightness: Brightness.dark, 
    ),
    scaffoldBackgroundColor: Colors.black,
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: Colors.white, 
      displayColor: Colors.white,
    ),
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}


