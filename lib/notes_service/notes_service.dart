import 'package:adaptive_ui/note_model.dart';
import 'package:sqflite/sqflite.dart';

class NotesService {
  static const _notesTable = 'notes';

  static const _columnId = 'id';
  static const _columnTitle = 'noteTitle';
  static const _columnSubtitle = 'noteSubtitle';
  static const _columnCreationDate = 'creationDate';

  late final Database _db;

  Future open() async {
    final databasePath = '${(await getDatabasesPath())}/notes.db';

    _db = await openDatabase(databasePath, version: 1, onCreate: (
      Database db,
      int version,
    ) async {
      await db.execute('''
          create table $_notesTable (
            $_columnId integer primary key autoincrement,
            $_columnTitle text not null,
            $_columnSubtitle text not null,
            $_columnCreationDate integer not null)
            ''');
    });
  }

  Future<List<Note>> loadNotes() async {
    final notesRecords = await _db.query(_notesTable);
    return notesRecords.map(Note.fromMap).toList();
  }

  Future<Note> addNote(Note noteToAdd) async {
    final noteId = await _db.insert(_notesTable, noteToAdd.toMap());
    return noteToAdd.copyWith(id: noteId);
  }

  Future<void> delete(Note noteToDelete) async {
    _db.delete(
      _notesTable,
      where: '$_columnId = ?',
      whereArgs: [noteToDelete.id],
    );
  }
}
