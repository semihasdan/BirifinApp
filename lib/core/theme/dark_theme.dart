import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      
      // Color Scheme
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFFD90429),
        secondary: Color(0xFF2B2D42),
        surface: Color(0xFF000000),
        background: Color(0xFF000000),
        error: Color(0xFFD90429),
        onPrimary: Color(0xFFFFFFFF),
        onSecondary: Color(0xFFEDF2F4),
        onSurface: Color(0xFFEDF2F4),
        onBackground: Color(0xFFEDF2F4),
      ),
      
      // Scaffold Background
      scaffoldBackgroundColor: const Color(0xFF000000),
      
      // App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF000000).withOpacity(0.8),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFFEDF2F4)),
        titleTextStyle: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFEDF2F4),
        ),
      ),
      
      // Text Theme
      textTheme: TextTheme(
        displayLarge: GoogleFonts.inter(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFEDF2F4),
        ),
        displayMedium: GoogleFonts.inter(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFEDF2F4),
        ),
        displaySmall: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFEDF2F4),
        ),
        headlineLarge: GoogleFonts.workSans(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFEDF2F4),
        ),
        headlineMedium: GoogleFonts.workSans(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFEDF2F4),
        ),
        headlineSmall: GoogleFonts.workSans(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: const Color(0xFFEDF2F4),
        ),
        titleLarge: GoogleFonts.workSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: const Color(0xFFEDF2F4),
        ),
        titleMedium: GoogleFonts.workSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: const Color(0xFFEDF2F4),
        ),
        titleSmall: GoogleFonts.workSans(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: const Color(0xFFCCCCCC),
        ),
        bodyLarge: GoogleFonts.workSans(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: const Color(0xFFEDF2F4),
        ),
        bodyMedium: GoogleFonts.workSans(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: const Color(0xFFEDF2F4),
        ),
        bodySmall: GoogleFonts.workSans(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: const Color(0xFFCCCCCC),
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
        fillColor: const Color(0xFF333333).withOpacity(0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF333333)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF333333)),
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
          color: const Color(0xFFEDF2F4),
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
        color: Color(0xFF333333),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      
      // Icon Theme
      iconTheme: const IconThemeData(
        color: Color(0xFFEDF2F4),
        size: 24,
      ),
      
      // Divider Theme
      dividerTheme: const DividerThemeData(
        color: Color(0xFF333333),
        thickness: 1,
      ),
    );
  }
}
