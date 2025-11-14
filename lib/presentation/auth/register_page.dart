import 'package:flutter/material.dart';

import 'package:birifin_app/presentation/auth/widgets/auth_controls.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
    required this.onShowLogin,
  });

  final VoidCallback onShowLogin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AuthSocialButton(
          label: 'Google ile kayıt ol',
          leading: Text(
            'G',
            style: theme.textTheme.titleLarge?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: colorScheme.surface,
          foregroundColor: colorScheme.onSurface,
          borderColor: colorScheme.outline.withOpacity(0.3),
        ),
        const SizedBox(height: 12),
        AuthSocialButton(
          label: 'Apple ile kayıt ol',
          leading: const Icon(Icons.apple),
          backgroundColor: colorScheme.onSurface,
          foregroundColor: colorScheme.surface,
        ),
        const SizedBox(height: 20),
        const AuthDivider(text: 'veya e-posta ile kayıt ol'),
        const SizedBox(height: 20),
        const AuthTextField(
          label: 'Kullanıcı Adı',
          hint: 'kullanicin',
          icon: Icons.person_outline,
        ),
        const SizedBox(height: 16),
        const AuthTextField(
          label: 'E-posta',
          hint: 'sen@ornek.com',
          icon: Icons.mail_outline,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        const AuthTextField(
          label: 'Şifre',
          hint: '••••••••',
          icon: Icons.lock_outline,
          obscureText: true,
        ),
        const SizedBox(height: 16),
        const AuthTextField(
          label: 'Şifreyi Onayla',
          hint: '••••••••',
          icon: Icons.lock_outline,
          obscureText: true,
          textInputAction: TextInputAction.done,
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          height: 54,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Kayıt Ol'),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Zaten hesabın var mı?',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface.withOpacity(0.7),
              ),
            ),
            TextButton(
              onPressed: onShowLogin,
              child: const Text('Giriş Yap'),
            ),
          ],
        ),
      ],
    );
  }
}
