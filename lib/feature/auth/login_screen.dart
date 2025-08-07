import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loci/data/services/auth_service.dart';
import 'package:loci/ui/widgets/fields/custom_text_field.dart';
import 'package:loci/ui/widgets/buttons/secondary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String errorMassage = '';

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  void login() async {
    try {
      await authService.value.signIn(
        email: controllerEmail.text,
        password: controllerPassword.text,
      );
      if (!mounted) return;
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMassage = e.message ?? 'exception';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'LOCI',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextField(
                      labelText: 'Email',
                      validator: (value) =>
                          value == null || !value.contains('@')
                          ? 'Неверный email'
                          : null,
                      onSaved: (value) => controllerEmail.text = value ?? '',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      labelText: 'Пароль',
                      obscureText: true,
                      onSaved: (value) => controllerPassword.text = value ?? '',
                      validator: (value) => value == null || value.isEmpty
                          ? 'Введите пароль'
                          : null,
                    ),
                    const SizedBox(height: 16),
                    Text(errorMassage, style: TextStyle(color: Colors.red)),
                    const SizedBox(height: 8),
                    SecondaryButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          login();
                        }
                      },
                      text: 'Войти',
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text('Еще нет аккаунта?'),
                  SizedBox(height: 8),
                  GestureDetector(
                    child: Text(
                      'Зарегистрироваться',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    onTap: () => context.push('/registration'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
