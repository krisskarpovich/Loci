import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:loci/core/navigation/router.dart';
import 'package:loci/theme/app_theme.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}

//Theme.of(context).colorScheme.primary
//Theme.of(context).colorScheme.secondary
