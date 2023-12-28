import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'device_prefs.dart';

class DevicePrefsCubit extends HydratedCubit<DevicePrefsState> {
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

  void updateCanVibrate(bool canVibrate) {
    emit(state.copyWith(canVibrate: canVibrate));
  }

  void updateSoundVolume(double newSoundVolume) {
    emit(state.copyWith(soundVolume: newSoundVolume));
  }

  String getCurrentAppLanguageCode() {
    return switch (state.appLanguage) {
      AppLanguages.deviceLanguage => '',
      AppLanguages.english => 'en',
      AppLanguages.turkish => 'tr',
    };
  }

  @override
  DevicePrefsState? fromJson(Map<String, dynamic> json) {
    return DevicePrefsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DevicePrefsState state) {
    return state.toJson();
  }
}
