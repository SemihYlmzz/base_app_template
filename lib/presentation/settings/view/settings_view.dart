import 'package:base_app_template/app/gen/l10n/l10n.dart';
import 'package:base_app_template/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/cubit/cubit.dart';
import '../../../initialize/injection_container.dart';
import '../widgets/widgets.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    context.select<DevicePrefsCubit, AppLanguages>(
      (value) => value.state.appLanguage,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(getIt<L10n>().settings),
      ),
      body: Column(
        children: [
          Setting(
            settingIconData: Icons.volume_up,
            settingName: getIt<L10n>().sound_volume,
            settingWidget: const SoundVolumeSlider(),
          ),
          Setting(
            settingIconData: Icons.dark_mode,
            settingName: getIt<L10n>().app_theme,
            settingWidget: const AppThemeSelector(),
          ),
          Setting(
            settingIconData: Icons.vibration,
            settingName: getIt<L10n>().vibration,
            settingWidget: const VibrationPreferenceSwitch(),
          ),
          Setting(
            settingIconData: Icons.language,
            settingName: getIt<L10n>().language,
            settingWidget: const AppLanguageSelector(),
          ),
        ],
      ),
    );
  }
}
