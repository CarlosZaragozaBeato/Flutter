import 'package:hive/hive.dart';
import 'package:notes_child/model/note.dart';

class Boxes {
  static Box<Note> getNotes() => Hive.box<Note>('notes');
}
