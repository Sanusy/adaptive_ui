import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';

@freezed
class Note with _$Note {
  const Note._();

  const factory Note({
    required int id,
    required String noteTitle,
    required String noteSubtitle,
    required DateTime creationDate,
  }) = _Note;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'noteTitle': noteTitle,
      'noteSubtitle': noteSubtitle,
      'creationDate': creationDate.millisecondsSinceEpoch,
    };

    return map;
  }

  factory Note.fromMap(Map<String, dynamic> rawNote) {
    return Note(
      id: rawNote['id'],
      noteTitle: rawNote['noteTitle'],
      noteSubtitle: rawNote['noteSubtitle'],
      creationDate: DateTime.fromMillisecondsSinceEpoch(
        rawNote['creationDate'],
      ),
    );
  }
}
