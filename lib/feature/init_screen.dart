import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:loci/data/services/auth_service.dart';
import 'package:loci/ui/pages/app_loading_page.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key, this.pageIfNotConnected});

  final Widget? pageIfNotConnected;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: authService,
      builder: (context, authService, child) {
        return StreamBuilder(
          stream: authService.authStateChanges,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const AppLoadingPage();
            } else {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (snapshot.hasData) {
                  context.go('/first');
                } else {
                  context.go('/login');
                }
              });
              return const SizedBox.shrink();
            }
          },
        );
      },
    );
  }
}

