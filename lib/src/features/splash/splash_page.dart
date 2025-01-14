import 'package:flutter/material.dart';
import 'package:meroapp/src/core/routes/route_extensions.dart';
import 'package:meroapp/src/core/routes/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _toNext();
    super.initState();
  }

  void _toNext() {
    Future.delayed(const Duration(seconds: 2), () {
      context.pushReplacementNamed(AppRoutes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Page'),
      ),
    );
  }
}
