import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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

void register() async {
  try {
    await authService.value.createAccount(
      email: controllerEmail.text,
      password: controllerPassword.text,
    );
    if (!mounted) return;
    Navigator.pop(context);
  } on FirebaseAuthException catch (e) {
    errorMassage = e.message ?? 'FirebaseAuthException';
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 128, 98, 248),
      appBar: AppBar(title: Text('Login')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextField(
                    labelText: 'Email',
                    validator: (value) => value == null || !value.contains('@')
                        ? errorMassage
                        : null,
                    onSaved: (value) => controllerEmail.text = value ?? '',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    labelText: 'Пароль',
                    obscureText: true,
                    onSaved: (value) => controllerPassword.text = value ?? '',
                    validator: (value) =>
                        value == null || value.isEmpty ? errorMassage : null,
                  ),
                  const SizedBox(height: 16),

                  const SizedBox(height: 20),
                  SecondaryButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        // getIt<AuthRepository>().register(
                        //   CreateUser(
                        //     name: name,
                        //     surname: surname,
                        //     email: email,
                        //     password: password,
                        //     confirmPassword: confirmPassword,
                        //   ),
                        // );
                        // context.go('/home');
                      }
                    },
                    text: 'Зарегистрироваться',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
