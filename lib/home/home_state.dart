import 'package:adaptive_ui/note_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isError,
    required List<Note> notes,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
    isLoading: false,
    isError: false,
    notes: [],
  );
}
