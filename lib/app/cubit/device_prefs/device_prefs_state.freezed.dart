// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_prefs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DevicePrefsState _$DevicePrefsStateFromJson(Map<String, dynamic> json) {
  return _DevicePrefsState.fromJson(json);
}

/// @nodoc
mixin _$DevicePrefsState {
  AppLanguages get appLanguage => throw _privateConstructorUsedError;
  AppTheme get appTheme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevicePrefsStateCopyWith<DevicePrefsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicePrefsStateCopyWith<$Res> {
  factory $DevicePrefsStateCopyWith(
          DevicePrefsState value, $Res Function(DevicePrefsState) then) =
      _$DevicePrefsStateCopyWithImpl<$Res, DevicePrefsState>;
  @useResult
  $Res call({AppLanguages appLanguage, AppTheme appTheme});
}

/// @nodoc
class _$DevicePrefsStateCopyWithImpl<$Res, $Val extends DevicePrefsState>
    implements $DevicePrefsStateCopyWith<$Res> {
  _$DevicePrefsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLanguage = null,
    Object? appTheme = null,
  }) {
    return _then(_value.copyWith(
      appLanguage: null == appLanguage
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as AppLanguages,
      appTheme: null == appTheme
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DevicePrefsStateImplCopyWith<$Res>
    implements $DevicePrefsStateCopyWith<$Res> {
  factory _$$DevicePrefsStateImplCopyWith(_$DevicePrefsStateImpl value,
          $Res Function(_$DevicePrefsStateImpl) then) =
      __$$DevicePrefsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppLanguages appLanguage, AppTheme appTheme});
}

/// @nodoc
class __$$DevicePrefsStateImplCopyWithImpl<$Res>
    extends _$DevicePrefsStateCopyWithImpl<$Res, _$DevicePrefsStateImpl>
    implements _$$DevicePrefsStateImplCopyWith<$Res> {
  __$$DevicePrefsStateImplCopyWithImpl(_$DevicePrefsStateImpl _value,
      $Res Function(_$DevicePrefsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLanguage = null,
    Object? appTheme = null,
  }) {
    return _then(_$DevicePrefsStateImpl(
      appLanguage: null == appLanguage
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as AppLanguages,
      appTheme: null == appTheme
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DevicePrefsStateImpl
    with DiagnosticableTreeMixin
    implements _DevicePrefsState {
  const _$DevicePrefsStateImpl(
      {this.appLanguage = AppLanguages.deviceLanguage,
      this.appTheme = AppTheme.deviceTheme});

  factory _$DevicePrefsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DevicePrefsStateImplFromJson(json);

  @override
  @JsonKey()
  final AppLanguages appLanguage;
  @override
  @JsonKey()
  final AppTheme appTheme;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DevicePrefsState(appLanguage: $appLanguage, appTheme: $appTheme)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DevicePrefsState'))
      ..add(DiagnosticsProperty('appLanguage', appLanguage))
      ..add(DiagnosticsProperty('appTheme', appTheme));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevicePrefsStateImpl &&
            (identical(other.appLanguage, appLanguage) ||
                other.appLanguage == appLanguage) &&
            (identical(other.appTheme, appTheme) ||
                other.appTheme == appTheme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appLanguage, appTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DevicePrefsStateImplCopyWith<_$DevicePrefsStateImpl> get copyWith =>
      __$$DevicePrefsStateImplCopyWithImpl<_$DevicePrefsStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DevicePrefsStateImplToJson(
      this,
    );
  }
}

abstract class _DevicePrefsState implements DevicePrefsState {
  const factory _DevicePrefsState(
      {final AppLanguages appLanguage,
      final AppTheme appTheme}) = _$DevicePrefsStateImpl;

  factory _DevicePrefsState.fromJson(Map<String, dynamic> json) =
      _$DevicePrefsStateImpl.fromJson;

  @override
  AppLanguages get appLanguage;
  @override
  AppTheme get appTheme;
  @override
  @JsonKey(ignore: true)
  _$$DevicePrefsStateImplCopyWith<_$DevicePrefsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
