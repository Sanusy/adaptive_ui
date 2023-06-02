import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_note_state.freezed.dart';

@freezed
class AddNoteState with _$AddNoteState {
  const AddNoteState._();

  const factory AddNoteState({
    required bool isLoading,
    required String title,
    required String subTitle,
    required AddNoteStatus? addNoteStatus,
  }) = _AddNoteState;

  factory AddNoteState.initial() => const AddNoteState(
        isLoading: false,
        title: '',
        subTitle: '',
        addNoteStatus: null,
      );

  bool get isNotEmpty => title.isNotEmpty || subTitle.isNotEmpty;

  bool get isFilled => title.isNotEmpty && subTitle.isNotEmpty;
}

enum AddNoteStatus {
  failed,
  success,
}
