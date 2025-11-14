import 'package:flutter/material.dart';

import 'package:birifin_app/core/constants/app_constants.dart';

class AuthPageLayout extends StatelessWidget {
  const AuthPageLayout({
    super.key,
    required this.title,
    required this.description,
    required this.child,
  });

  final String title;
  final String description;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;
    final surfaceColor = isDark
        ? colorScheme.surface.withOpacity(0.25)
        : colorScheme.surface.withOpacity(0.95);

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.secondary,
              colorScheme.background,
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // Main content - scroll view
              Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 520),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/transparent/BirifinTextWT.png',
                          height: 96,
                        ),
                        const SizedBox(height: 0),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(28),
                          decoration: BoxDecoration(
                            color: surfaceColor,
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color:
                                  colorScheme.onSurface.withOpacity(isDark ? 0.08 : 0.12),
                            ),
                            boxShadow: [
                              if (!isDark)
                                BoxShadow(
                                  color: colorScheme.primary.withOpacity(0.08),
                                  blurRadius: 30,
                                  offset: const Offset(0, 20),
                                ),
                            ],
                          ),
                          child: DefaultTextStyle(
                            style: theme.textTheme.bodyMedium ??
                                const TextStyle(fontSize: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: theme.textTheme.headlineMedium?.copyWith(
                                    color: colorScheme.onSurface,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  description,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color:
                                        colorScheme.onSurface.withOpacity(0.7),
                                  ),
                                ),
                                const SizedBox(height: 28),
                                child,
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Text(
                          '${AppConstants.appName} ${AppConstants.appVersion}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color:
                                colorScheme.onSecondary.withOpacity(0.75),
                            letterSpacing: 0.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Home button - positioned at top-left (MUST BE LAST to be on top!)
              Positioned(
                top: 8,
                left: 8,
                child: _BackHomeButton(
                  onPressed: () {
                    final navigator = Navigator.of(context);
                    if (navigator.canPop()) {
                      navigator.pop();
                    } else {
                      navigator.pushReplacementNamed(AppConstants.homeRoute);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BackHomeButton extends StatelessWidget {
  const _BackHomeButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white.withOpacity(0.15),
          border: Border.all(
            color: Colors.white.withOpacity(0.35),
            width: 1,
          ),
        ),
        child: const Icon(
          Icons.home_outlined,
          color: Colors.white,
          size: 22,
        ),
      ),
    );
  }
}
