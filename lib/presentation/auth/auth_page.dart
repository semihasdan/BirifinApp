import 'package:flutter/material.dart';

import 'package:birifin_app/presentation/auth/login_page.dart';
import 'package:birifin_app/presentation/auth/register_page.dart';
import 'package:birifin_app/presentation/auth/widgets/auth_page_layout.dart';

enum AuthMode { register, login }

class AuthPage extends StatefulWidget {
  const AuthPage({
    super.key,
    this.initialMode = AuthMode.register,
  });

  final AuthMode initialMode;

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late bool _isRegister;

  @override
  void initState() {
    super.initState();
    _isRegister = widget.initialMode == AuthMode.register;
  }

  void _toggleMode() {
    setState(() {
      _isRegister = !_isRegister;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isRegister = _isRegister;
    return AuthPageLayout(
      title: isRegister ? 'Yeni Birifin hesabını oluştur' : 'Tekrar hoş geldin',
      description: isRegister
          ? 'Kaydol ve teknoloji ile ekonominin nabzını kaçırma.'
          : 'Okumaya kaldığın yerden devam etmek için giriş yap.',
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 350),
        switchInCurve: Curves.easeInOut,
        switchOutCurve: Curves.easeInOut,
        child: isRegister
            ? RegisterForm(
                key: const ValueKey('register-form'),
                onShowLogin: _toggleMode,
              )
            : LoginForm(
                key: const ValueKey('login-form'),
                onShowRegister: _toggleMode,
              ),
      ),
    );
  }
}
