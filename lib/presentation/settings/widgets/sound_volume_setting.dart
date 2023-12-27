import 'package:flutter/material.dart';

import 'widgets.dart';

class SoundVolumeSetting extends StatelessWidget {
  const SoundVolumeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Setting(
      settingIconData: Icons.volume_up,
      settingName: 'Sound Volume',
      settingWidget: Slider.adaptive(
        value: 0.5,
        onChanged: (newValue) {},
      ),
    );
  }
}
