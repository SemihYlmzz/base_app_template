import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigatorView extends StatelessWidget {
  const NavigatorView({
    required this.navigationShell,
    super.key,
  });
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Theme.of(context).colorScheme.onBackground,
        currentIndex: navigationShell.currentIndex,
        type: BottomNavigationBarType.shifting,
        unselectedIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onBackground.withOpacity(
                0.35,
              ),
        ),
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onBackground,
        ),
        enableFeedback: true,
        onTap: navigationShell.goBranch,
        items: const [
          BottomNavigationBarItem(
            label: 'Pub Dev',
            icon: Icon(
              Icons.verified_outlined,
            ),
            activeIcon: Icon(
              Icons.verified,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Youtube',
            icon: Icon(
              Icons.play_arrow_outlined,
            ),
            activeIcon: Icon(
              Icons.play_arrow,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Versions',
            icon: Icon(
              Icons.cloud_done_outlined,
            ),
            activeIcon: Icon(
              Icons.cloud_done,
            ),
          ),
        ],
      ),
    );
  }
}
