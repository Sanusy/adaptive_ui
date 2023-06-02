import 'package:adaptive_ui/settings/settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsState.initial());

  void onToggleTheme() {
    emit(state.copyWith(isDarkTheme: !state.isDarkTheme));
  }
}
