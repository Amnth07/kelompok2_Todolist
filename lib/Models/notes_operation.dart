import 'package:flutter/foundation.dart';
import 'package:todo_list/Models/note.dart';

class NotesOperation with ChangeNotifier{
  List<Note> _notes = [];
  List<Note> get getNotes => _notes;

  void addNewNote(String title, String description){
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }
}