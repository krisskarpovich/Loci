
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppLoadingPage extends StatelessWidget {
  const AppLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  CircularProgressIndicator.adaptive(),
      ),
    );
  }
}