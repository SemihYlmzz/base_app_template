// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_prefs_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DevicePrefsStateImpl _$$DevicePrefsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$DevicePrefsStateImpl(
      appLanguage:
          $enumDecodeNullable(_$AppLanguagesEnumMap, json['appLanguage']) ??
              AppLanguages.deviceLanguage,
      appTheme: $enumDecodeNullable(_$AppThemeEnumMap, json['appTheme']) ??
          AppTheme.deviceTheme,
      canVibrate: json['canVibrate'] as bool? ?? true,
      soundVolume: (json['soundVolume'] as num?)?.toDouble() ?? 0.75,
    );

Map<String, dynamic> _$$DevicePrefsStateImplToJson(
        _$DevicePrefsStateImpl instance) =>
    <String, dynamic>{
      'appLanguage': _$AppLanguagesEnumMap[instance.appLanguage]!,
      'appTheme': _$AppThemeEnumMap[instance.appTheme]!,
      'canVibrate': instance.canVibrate,
      'soundVolume': instance.soundVolume,
    };

const _$AppLanguagesEnumMap = {
  AppLanguages.deviceLanguage: 'deviceLanguage',
  AppLanguages.english: 'english',
  AppLanguages.turkish: 'turkish',
};

const _$AppThemeEnumMap = {
  AppTheme.deviceTheme: 'deviceTheme',
  AppTheme.lightTheme: 'lightTheme',
  AppTheme.darkTheme: 'darkTheme',
};
