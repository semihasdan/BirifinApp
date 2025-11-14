import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:birifin_app/core/constants/app_constants.dart';
import 'package:birifin_app/core/utils/theme_provider.dart';
import 'package:birifin_app/presentation/auth/auth_page.dart';
import 'package:birifin_app/presentation/home/birifin_home_shell.dart';
import 'package:birifin_app/presentation/summary/summary_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const BirifinApp(),
    ),
  );
}

class BirifinApp extends StatelessWidget {
  const BirifinApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return MaterialApp(
      title: 'Birifin',
      debugShowCheckedModeBanner: false,
      theme: themeProvider.lightTheme,
      darkTheme: themeProvider.darkTheme,
      themeMode: themeProvider.themeMode,
      routes: {
        AppConstants.homeRoute: (_) => const BirifinHomeShell(),
        AppConstants.loginRoute: (_) =>
            const AuthPage(initialMode: AuthMode.login),
        AppConstants.registerRoute: (_) =>
            const AuthPage(initialMode: AuthMode.register),
        AppConstants.summaryRoute: (_) => const SummaryPage(),
      },
    );
  }
}
