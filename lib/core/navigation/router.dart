import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loci/domain/entities/place.dart';
import 'package:loci/feature/account/account_screen.dart';
import 'package:loci/feature/account/settings_screen.dart';
import 'package:loci/feature/add_post/add_post_screen.dart';
import 'package:loci/feature/auth/register_screen.dart';
import 'package:loci/feature/main_navigation_shell.dart';
import 'package:loci/feature/home/home_screen.dart';
import 'package:loci/feature/auth/login_screen.dart';
import 'package:loci/feature/init_screen.dart';
import 'package:loci/feature/map/add_review.dart';
import 'package:loci/feature/map/map_screen.dart';
import 'package:loci/feature/map/map_with_markers.dart';

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
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return MainNavigationShell(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/home',
                  name: 'home',
                  builder: (context, state) => const HomeScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/search',
                  name: 'search',
                  builder: (context, state) => MapScreen(),
                ),
                GoRoute(
                  path: '/addReview',
                  name: 'addReview',
                 builder: (context, state) => switch (state.extra) {
                    Place type => AddReviewScreen(place: type),
                    _ => UnFoundPage(),
                  },
                ),
                GoRoute(
                  path: '/markers',
                  builder: (context, state) => switch (state.extra) {
                    Place type => MapWithMarkers(place: type),
                    _ => UnFoundPage(),
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/add',
                  name: 'add',
                  builder: (context, state) => const AddPostScreen(),
                ),
              ],
            ),

            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/account',
                  name: 'account',
                  builder: (context, state) => const AccountScreen(),
                  routes: [
                    GoRoute(
                      path: 'set',
                      name: 'set',
                      builder: (context, state) => const SettingsScreen(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

class UnFoundPage extends StatelessWidget {
  const UnFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Страница не найдена')));
  }
}
