import 'package:flutter/material.dart';
import 'package:loci/data/services/auth_service.dart';
import 'package:loci/ui/widgets/confirmation_dialog.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    popPage() {
      Navigator.pop(context);
    }

    void logout() async {
      try {
        await authService.value.signOut();
        popPage();
      } catch (e) {}
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Настройки')],
            ),
            floating: true,
            snap: true,
            backgroundColor: Colors.white,
            foregroundColor: Theme.of(context).colorScheme.secondary,
            elevation: 0,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Изменить пароль',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Изменить логин',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(height: 16),
                  GestureDetector(
                    onTap: () => ConfirmationDialogs.showConfirmationDialog(
                      title: 'Вы уверены, что хотите выйти из аккаунта?',
                      context: context,
                      onConfirm: logout,
                    ),
                    child: const Text(
                      'Выйти из аккаунта',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
