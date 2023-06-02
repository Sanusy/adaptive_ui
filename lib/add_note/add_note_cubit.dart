import 'package:adaptive_ui/add_note/add_note_state.dart';
import 'package:adaptive_ui/main.dart';
import 'package:adaptive_ui/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteState.initial());

  void onTitleChanged(String newTitle) {
    emit(state.copyWith(title: newTitle));
  }

  void onSubTitleChanged(String newSubTitle) {
    emit(state.copyWith(subTitle: newSubTitle));
  }

  Future<void> onAddNote() async {
    emit(state.copyWith(isLoading: true));
    try {
      await notesService.addNote(Note(
        id: 0,
        noteTitle: state.title,
        noteSubtitle: state.subTitle,
        creationDate: DateTime.now(),
      ));

      emit(state.copyWith(
          addNoteStatus: AddNoteStatus.success, isLoading: false));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        addNoteStatus: AddNoteStatus.failed,
      ));
    }
  }
}
