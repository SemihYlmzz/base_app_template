import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/cubit/cubit.dart';

class AppThemeSelector extends StatelessWidget {
  const AppThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = context.select<DevicePrefsCubit, AppTheme>(
      (value) => value.state.appTheme,
    );

    String themeName(AppTheme appTheme) {
      return switch (appTheme) {
        AppTheme.deviceTheme => 'Device Theme',
        AppTheme.darkTheme => 'Dark Theme',
        AppTheme.lightTheme => 'Light Theme',
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
