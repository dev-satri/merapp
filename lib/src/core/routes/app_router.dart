import 'package:flutter/material.dart';
import 'package:meroapp/src/core/routes/routes.dart';
import 'package:meroapp/src/features/auth/presentation/pages/login/login_page.dart';
import 'package:meroapp/src/features/auth/presentation/pages/register/register_page.dart';
import 'package:meroapp/src/features/splash/splash_page.dart';

class AppRouter {
  static Route<dynamic> routes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initial:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      default:
        return MaterialPageRoute(builder: (_) => const InvalidRoutePage());
    }
  }
}

class InvalidRoutePage extends StatelessWidget {
  const InvalidRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Invalid Route'),
      ),
    );
  }
}
