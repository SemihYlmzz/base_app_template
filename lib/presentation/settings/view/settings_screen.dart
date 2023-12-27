import 'package:flutter/material.dart';
import '../../presentation.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static const String path = '/settings';
  static const String name = 'settings';

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}
