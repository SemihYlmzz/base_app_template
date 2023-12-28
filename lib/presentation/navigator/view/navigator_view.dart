import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/gen/l10n/l10n.dart';
import '../../../initialize/injection_container.dart';

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
        items: [
          BottomNavigationBarItem(
            label: getIt<L10n>().pub_dev,
            icon: const Icon(
              Icons.verified_outlined,
            ),
            activeIcon: const Icon(
              Icons.verified,
            ),
          ),
          BottomNavigationBarItem(
            label: getIt<L10n>().youtube,
            icon: const Icon(
              Icons.play_arrow_outlined,
            ),
            activeIcon: const Icon(
              Icons.play_arrow,
            ),
          ),
          BottomNavigationBarItem(
            label: getIt<L10n>().versions,
            icon: const Icon(
              Icons.cloud_done_outlined,
            ),
            activeIcon: const Icon(
              Icons.cloud_done,
            ),
          ),
        ],
      ),
    );
  }
}
