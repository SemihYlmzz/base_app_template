import 'package:flutter/material.dart';
import '../../presentation.dart';

class VersionsScreen extends StatelessWidget {
  const VersionsScreen({super.key});
  static const String path = '/versions';
  static const String name = 'versions';

  @override
  Widget build(BuildContext context) {
    return const VersionsView();
  }
}
