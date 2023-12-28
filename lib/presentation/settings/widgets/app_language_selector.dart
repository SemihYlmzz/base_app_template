import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/cubit/cubit.dart';
import '../../../app/gen/l10n/l10n.dart';
import '../../../initialize/injection_container.dart';

class AppLanguageSelector extends StatelessWidget {
  const AppLanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final appLanguage = context.select<DevicePrefsCubit, AppLanguages>(
      (value) => value.state.appLanguage,
    );

    String languageName(AppLanguages appTheme) {
      return switch (appTheme) {
        AppLanguages.deviceLanguage => getIt<L10n>().device_language,
        AppLanguages.english => 'English',
        AppLanguages.turkish => 'Türkçe',
      };
    }

    return DropdownButton(
      menuMaxHeight: 300,
      value: appLanguage,
      items: AppLanguages.values.map((AppLanguages language) {
        return DropdownMenuItem<AppLanguages>(
          value: language,
          child: Text(languageName(language)),
        );
      }).toList(),
      onChanged: (AppLanguages? value) {
        if (value == null) {
          return;
        }
        context.read<DevicePrefsCubit>().updateDeviceLanguage(value);
      },
    );
  }
}
