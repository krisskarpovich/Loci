import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loci/feature/auth/cubit/auth_cubit.dart';
import 'package:loci/ui/pages/app_loading_page.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthenticatedAuthState) {
          context.go('/home');
        } else if (state is UnauthenticatedAuthState) {
          context.go('/login');
        }
      },
      child: const AppLoadingPage(),
    );
  }
}
