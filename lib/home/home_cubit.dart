import 'package:adaptive_ui/home/home_state.dart';
import 'package:adaptive_ui/main.dart';
import 'package:adaptive_ui/navigation/go_router.dart';
import 'package:adaptive_ui/note_details/note_details_screen.dart';
import 'package:adaptive_ui/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  Future<void> loadNotes() async {
    emit(state.copyWith(isLoading: true));

    try {
      final notes = await notesService.loadNotes();
      emit(state.copyWith(
        isLoading: false,
        notes: notes,
      ));
    } catch (e) {
      emit(state.copyWith(isError: true));
    }
  }

  void onAddNote() {
    goRouter.go('/home/addNote', extra: loadNotes);
  }

  void onOpenNote(Note noteToOpen) {
    goRouter.go(
      '/home/noteDetails',
      extra: NoteDetailsScreenData(
        noteToOpen,
        loadNotes,
      ),
    );
  }
}
