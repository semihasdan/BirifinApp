import 'package:flutter/material.dart';

import 'package:birifin_app/presentation/auth/widgets/auth_controls.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.onShowRegister,
  });

  final VoidCallback onShowRegister;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AuthSocialButton(
          label: 'Google ile giriş yap',
          leading: Text(
            'G',
            style: theme.textTheme.titleLarge?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: colorScheme.surface,
          foregroundColor: colorScheme.onSurface,
          borderColor: colorScheme.outline.withOpacity(0.3),
        ),
        const SizedBox(height: 12),
        AuthSocialButton(
          label: 'Apple ile giriş yap',
          leading: const Icon(Icons.apple),
          backgroundColor: colorScheme.onSurface,
          foregroundColor: colorScheme.surface,
        ),
        const SizedBox(height: 20),
        const AuthDivider(text: 'veya e-posta ile giriş yap'),
        const SizedBox(height: 20),
        const AuthTextField(
          label: 'E-posta',
          hint: 'ornek@mail.com',
          icon: Icons.mail_outline,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        AuthTextField(
          label: 'Şifre',
          hint: '••••••••',
          icon: Icons.lock_outline,
          obscureText: true,
          textInputAction: TextInputAction.done,
          trailing: TextButton(
            onPressed: () {},
            child: const Text('Şifremi unuttum?'),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          height: 54,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Giriş Yap'),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hesabın yok mu?',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface.withOpacity(0.7),
              ),
            ),
            TextButton(
              onPressed: onShowRegister,
              child: const Text('Kayıt Ol'),
            ),
          ],
        ),
      ],
    );
  }
}
