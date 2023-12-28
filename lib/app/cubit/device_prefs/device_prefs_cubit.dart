import 'package:flutter_bloc/flutter_bloc.dart';

import 'device_prefs.dart';

class DevicePrefsCubit extends Cubit<DevicePrefsState> {
  DevicePrefsCubit() : super(const DevicePrefsState());

  void updateDeviceLanguage(AppLanguages selectedAppLanguage) {
    emit(
      state.copyWith(
        appLanguage: selectedAppLanguage,
      ),
    );
  }

  void updateAppTheme(AppTheme newAppTheme) {
    emit(
      state.copyWith(
        appTheme: newAppTheme,
      ),
    );
  }

  String getCurrentAppLanguageCode() {
    return switch (state.appLanguage) {
      AppLanguages.deviceLanguage => '',
      AppLanguages.english => 'en',
      AppLanguages.turkish => 'tr',
    };
  }
}
