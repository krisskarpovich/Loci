import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainNavigationShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainNavigationShell({super.key, required this.navigationShell});

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: _onTap,
        indicatorColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: const [
          CustomNavDestination(iconData: Icons.home_filled),
          CustomNavDestination(iconData: Icons.search),
          CustomNavDestination(iconData: Icons.edit_location_outlined),
          CustomNavDestination(iconData: Icons.account_circle),
        ],
      ),
    );
  }
}

class CustomNavDestination extends StatelessWidget {
  final IconData iconData;

  const CustomNavDestination({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(iconData, color: const Color.fromARGB(255, 0, 0, 0), size: 28),
      selectedIcon: Icon(
        iconData,
        color: Theme.of(context).colorScheme.primary,
        size: 32,
      ),
      label: '',
    );
  }
}
