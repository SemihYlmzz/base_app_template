import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Column(
        children: [
          SoundVolumeSetting(),
          DarkModeSetting(),
          VibrationSetting(),
          LanguageSetting(),
        ],
      ),
    );
  }
}
