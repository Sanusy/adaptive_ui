import 'package:adaptive_ui/note_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_details_state.freezed.dart';

@freezed
class NoteDetailsState with _$NoteDetailsState {
  const factory NoteDetailsState({
    required bool isLoading,
    required bool isError,
    required Note note,
    required DeleteNoteStatus? deleteNoteStatus,
  }) = _NoteDetailsState;

  factory NoteDetailsState.initial({required Note noteToShow}) =>
      NoteDetailsState(
        isLoading: false,
        isError: false,
        note: noteToShow,
        deleteNoteStatus: null,
      );
}

enum DeleteNoteStatus {
  failed,
  success,
}
