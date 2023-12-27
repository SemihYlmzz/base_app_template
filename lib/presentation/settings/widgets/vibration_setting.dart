import 'package:flutter/material.dart';

import 'widgets.dart';

class VibrationSetting extends StatelessWidget {
  const VibrationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Setting(
      settingIconData: Icons.vibration,
      settingName: 'Vibration',
      settingWidget: Switch.adaptive(
        value: true,
        onChanged: (newValue) {},
      ),
    );
  }
}
