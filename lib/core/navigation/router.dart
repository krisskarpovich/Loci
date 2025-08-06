import 'package:go_router/go_router.dart';
import 'package:loci/feature/auth/register_screen.dart';
import 'package:loci/feature/feed/first_screen.dart';
import 'package:loci/feature/auth/login_screen.dart';
import 'package:loci/feature/init_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'init',
      builder: (context, state) => const InitScreen(),
      routes: [
        GoRoute(
          path: 'login',
          name: 'login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/registration',
          name: 'registration',
          builder: (context, state) => const RegistrationScreen(),
        ),
        GoRoute(
          path: 'first',
          name: 'first',
          builder: (context, state) => const FirstScreen(),
        ),
      ],
    ),
  ],
);
