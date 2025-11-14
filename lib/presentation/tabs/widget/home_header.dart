import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:birifin_app/core/constants/app_constants.dart';
import 'package:birifin_app/core/utils/theme_provider.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final theme = Theme.of(context);

    return Row(
      children: [
        Image.asset(
          themeProvider.isDarkMode
              ? 'assets/transparent/BirifinTextWT.png'
              : 'assets/transparent/BirifinTextBT.png',
          height: 58,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: theme.colorScheme.surface.withOpacity(0.35),
          ),
          child: Row(
            children: [
              Icon(
                themeProvider.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                size: 18,
                color: theme.colorScheme.onSurface,
              ),
              Switch.adaptive(
                value: themeProvider.isDarkMode,
                activeColor: theme.colorScheme.primary,
                onChanged: (_) => themeProvider.toggleTheme(),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: theme.colorScheme.surface.withOpacity(0.5),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppConstants.registerRoute);
            },
            icon: Icon(
              Icons.person_outline,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
