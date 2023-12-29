import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../presentation/presentation.dart';
import '../app.dart';

mixin RouterMixin on State<App> {
  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();

  final _router = GoRouter(
    initialLocation: PubDevScreen.path,
    navigatorKey: parentNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, statefullNavigationShell) => NavigatorScreen(
          navigationShell: statefullNavigationShell,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: PubDevScreen.path,
                name: PubDevScreen.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: PubDevScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: YoutubeScreen.path,
                name: YoutubeScreen.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: YoutubeScreen(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: VersionsScreen.path,
                name: VersionsScreen.name,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: VersionsScreen(),
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: SettingsScreen.path,
        name: SettingsScreen.name,
        parentNavigatorKey: parentNavigatorKey,
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
    debugLogDiagnostics: true,
  );

  GoRouter get router => _router;
}
