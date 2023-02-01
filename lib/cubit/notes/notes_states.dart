import '../../data/models/note_model.dart';

abstract class NotesState{}

class NoteInitialState extends NotesState{}
class NoteLoadingState extends NotesState{}
class NoteSuccessState extends NotesState{
  final List<NoteModel>notes;

  NoteSuccessState(this.notes);

}
class NoteFailureState extends NotesState{
  final String error;

  NoteFailureState(this.error);
}