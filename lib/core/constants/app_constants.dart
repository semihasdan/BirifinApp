import 'package:flutter/material.dart';

class AppConstants {
  // App Info
  static const String appName = 'Birifin';
  static const String appVersion = 'v1.0';
  
  // Colors
  static const Color primaryColor = Color(0xFFD90429);
  static const Color secondaryColor = Color(0xFF2B2D42);
  static const Color accentColor = Color(0xFFEDF2F4);
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color darkBackground = Color(0xFF000000);
  static const Color gray100 = Color(0xFFE5E5E5);
  static const Color gray200 = Color(0xFFCCCCCC);
  static const Color gray500 = Color(0xFF777777);
  static const Color gray700 = Color(0xFF333333);
  
  // Dimensions
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingExtraLarge = 32.0;
  
  static const double borderRadiusSmall = 8.0;
  static const double borderRadiusMedium = 12.0;
  static const double borderRadiusLarge = 16.0;
  static const double borderRadiusExtraLarge = 24.0;
  
  // Routes
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String homeRoute = '/';
  static const String sourcesRoute = '/sources';
  static const String summaryRoute = '/summary';
  static const String proRoute = '/pro';
  
  // Assets
  static const String logoPath = 'assets/icons/logo.png';
  static const String wordmarkPath = 'assets/icons/wordmark.png';
  static const String exampleAudioPath = 'assets/audio/example.mp3';
  
  // Tab Indices
  static const int sourcesTabIndex = 0;
  static const int homeTabIndex = 1;
  static const int proTabIndex = 2;
}
