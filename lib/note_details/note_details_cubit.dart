import 'package:adaptive_ui/main.dart';
import 'package:adaptive_ui/note_details/note_details_state.dart';
import 'package:adaptive_ui/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteDetailsCubit extends Cubit<NoteDetailsState> {
  NoteDetailsCubit({required Note noteToShow})
      : super(NoteDetailsState.initial(noteToShow: noteToShow));

  Future<void> onDeleteNote() async {
    emit(state.copyWith(isLoading: true));
    try {
      await notesService.delete(state.note);

      emit(
        state.copyWith(
          isLoading: false,
          deleteNoteStatus: DeleteNoteStatus.success,
        ),
      );
    } catch (_) {
      emit(state.copyWith(
        isLoading: false,
        deleteNoteStatus: DeleteNoteStatus.failed
      ));
    }
  }
}
