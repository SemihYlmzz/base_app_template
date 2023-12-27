import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation.dart';

class NavigatorScreen extends StatelessWidget {
  const NavigatorScreen({
    required this.navigationShell,
    super.key,
  });
  static const String path = '/navigator';
  static const String name = 'navigator';
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return NavigatorView(
      navigationShell: navigationShell,
    );
  }
}
