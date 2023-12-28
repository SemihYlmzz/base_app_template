import 'package:flutter/material.dart';
import 'widgets.dart';

class DarkModeSetting extends StatelessWidget {
  const DarkModeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Setting(
      settingIconData: Icons.dark_mode,
      settingName: 'App Theme',
      settingWidget: AppThemeSelector(),
    );
  }
}
