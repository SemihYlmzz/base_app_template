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
          Setting(
            settingIconData: Icons.volume_up,
            settingName: 'Sound Volume',
            settingWidget: SoundVolumeSlider(),
          ),
          Setting(
            settingIconData: Icons.dark_mode,
            settingName: 'App Theme',
            settingWidget: AppThemeSelector(),
          ),
          Setting(
            settingIconData: Icons.vibration,
            settingName: 'Vibration',
            settingWidget: VibrationPreferenceSwitch(),
          ),
          Setting(
            settingIconData: Icons.language,
            settingName: 'Language',
            settingWidget: AppLanguageSelector(),
          ),
        ],
      ),
    );
  }
}
