
import 'package:flutter/material.dart';
import 'package:provider_example/models/note.dart';

class NotesOperation with ChangeNotifier {

  List<Note> _notes = <Note>[];

  List<Note> get getNotes{
    return [..._notes];
  }


  NotesOperation(){
    addNewNote("Somenthing", "else");
    addNewNote("Somenthing", "else");
    addNewNote("Somenthing", "else");
    addNewNote("Somenthing", "else");
  }

  void deleteNote(Note note){
    _notes.remove(note);
    notifyListeners();
  }

  void addNewNote(String title, String description){
    Note note = Note(title: title, description: description);
    _notes.add(note);
    notifyListeners();
  }

}