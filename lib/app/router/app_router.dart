import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../presentation/presentation.dart';
import '../app.dart';

mixin RouterMixin on State<App> {
  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();

  final _router = GoRouter(
    initialLocation: SignInScreen.path,
    navigatorKey: parentNavigatorKey,
    routes: [
      GoRoute(
        path: SignInScreen.path,
        name: SignInScreen.name,
        parentNavigatorKey: parentNavigatorKey,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: SignUpScreen.path,
        name: SignUpScreen.name,
        parentNavigatorKey: parentNavigatorKey,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: MailVerificationScreen.path,
        name: MailVerificationScreen.name,
        parentNavigatorKey: parentNavigatorKey,
        builder: (context, state) => const MailVerificationScreen(),
      ),
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
