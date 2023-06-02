import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool isDarkTheme,
  }) = _SettingsState;

  factory SettingsState.initial() => const SettingsState(
        isDarkTheme: false,
      );
}
