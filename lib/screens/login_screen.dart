import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import '../routes/app_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      child:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FTextField.email(
                controller: _emailController,
                label: const Text('Correo Electrónico'),
              ),
              const SizedBox(height: 16),
              FTextField.password(
                controller: _passwordController,
                obscuringCharacter: '*',
              ),
              const SizedBox(height: 24),
              FButton(
                onPress: () {
                  Navigator.of(context).pushReplacementNamed(AppRoutes.dashboard);
                },
                child: const Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}