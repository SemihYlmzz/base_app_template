import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_prefs_state.freezed.dart';
part 'device_prefs_state.g.dart';

@freezed
class DevicePrefsState with _$DevicePrefsState {
  const factory DevicePrefsState({
    @Default(AppLanguages.deviceLanguage) AppLanguages appLanguage,
    @Default(AppTheme.deviceTheme) AppTheme appTheme,
    @Default(true) bool canVibrate,
    @Default(0.75) double soundVolume,
  }) = _DevicePrefsState;

  factory DevicePrefsState.fromJson(Map<String, Object?> json) =>
      _$DevicePrefsStateFromJson(
        json,
      );
}

enum AppLanguages {
  deviceLanguage,
  english,
  turkish,
}

enum AppTheme {
  deviceTheme,
  lightTheme,
  darkTheme,
}
