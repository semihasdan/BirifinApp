import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      
      // Color Scheme
      colorScheme: const ColorScheme.light(
        primary: Color(0xFFD90429),
        secondary: Color(0xFF2B2D42),
        surface: Color(0xFFFFFFFF),
        background: Color(0xFFFFFFFF),
        error: Color(0xFFD90429),
        onPrimary: Color(0xFFFFFFFF),
        onSecondary: Color(0xFFFFFFFF),
        onSurface: Color(0xFF2B2D42),
        onBackground: Color(0xFF2B2D42),
      ),
      
      // Scaffold Background
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      
      // App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFFFFFFFF).withOpacity(0.8),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF2B2D42)),
        titleTextStyle: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF2B2D42),
        ),
      ),
      
      // Text Theme
      textTheme: TextTheme(
        displayLarge: GoogleFonts.inter(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF2B2D42),
        ),
        displayMedium: GoogleFonts.inter(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF2B2D42),
        ),
        displaySmall: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF2B2D42),
        ),
        headlineLarge: GoogleFonts.workSans(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF2B2D42),
        ),
        headlineMedium: GoogleFonts.workSans(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF2B2D42),
        ),
        headlineSmall: GoogleFonts.workSans(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF2B2D42),
        ),
        titleLarge: GoogleFonts.workSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF2B2D42),
        ),
        titleMedium: GoogleFonts.workSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF2B2D42),
        ),
        titleSmall: GoogleFonts.workSans(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF777777),
        ),
        bodyLarge: GoogleFonts.workSans(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: const Color(0xFF2B2D42),
        ),
        bodyMedium: GoogleFonts.workSans(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: const Color(0xFF2B2D42),
        ),
        bodySmall: GoogleFonts.workSans(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: const Color(0xFF777777),
        ),
        labelLarge: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFFFFFFF),
        ),
      ),
      
      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFD90429), width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFD90429)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        hintStyle: GoogleFonts.inter(
          fontSize: 14,
          color: const Color(0xFF777777),
        ),
        labelStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF2B2D42),
        ),
      ),
      
      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFD90429),
          foregroundColor: const Color(0xFFFFFFFF),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      
      // Card Theme
      cardTheme: const CardThemeData(
        color: Color(0xFFEDF2F4),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      
      // Icon Theme
      iconTheme: const IconThemeData(
        color: Color(0xFF2B2D42),
        size: 24,
      ),
      
      // Divider Theme
      dividerTheme: const DividerThemeData(
        color: Color(0xFFE5E5E5),
        thickness: 1,
      ),
    );
  }
}
