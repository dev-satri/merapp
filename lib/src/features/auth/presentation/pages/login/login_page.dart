import 'package:flutter/material.dart';
import 'package:meroapp/src/core/components/button_component.dart';
import 'package:meroapp/src/core/components/textfield.dart';
import 'package:meroapp/src/core/helpers/gap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;
  late final TextEditingController _passController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldComponent(
                controller: _emailController,
                labelText: 'Email',
              ),
              Gap.verticle(8),
              TextFieldComponent(
                controller: _passController,
                labelText: 'Password',
              ),
              Gap.verticle(8),
              ButtonComponent(onPressed: () {}, buttonText: 'Login'),
            ],
          ),
        ),
      ),
    );
  }
}
