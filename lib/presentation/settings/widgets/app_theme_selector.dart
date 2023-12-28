import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/cubit/cubit.dart';
import '../../../app/gen/l10n/l10n.dart';
import '../../../initialize/injection_container.dart';

class AppThemeSelector extends StatelessWidget {
  const AppThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = context.select<DevicePrefsCubit, AppTheme>(
      (value) => value.state.appTheme,
    );
    context.select<DevicePrefsCubit, AppLanguages>(
      (value) => value.state.appLanguage,
    );
    String themeName(AppTheme appTheme) {
      return switch (appTheme) {
        AppTheme.deviceTheme => getIt<L10n>().device_theme,
        AppTheme.darkTheme => getIt<L10n>().dark_theme,
        AppTheme.lightTheme => getIt<L10n>().light_theme,
      };
    }

    return DropdownButton(
      menuMaxHeight: 300,
      value: appTheme,
      items: AppTheme.values.map((AppTheme theme) {
        return DropdownMenuItem<AppTheme>(
          value: theme,
          child: Text(themeName(theme)),
        );
      }).toList(),
      onChanged: (AppTheme? value) {
        if (value == null) {
          return;
        }
        context.read<DevicePrefsCubit>().updateAppTheme(value);
      },
    );
  }
}
