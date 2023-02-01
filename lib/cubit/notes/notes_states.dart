abstract class NotesState{}

class NoteInitialState extends NotesState{}
class NoteLoadingState extends NotesState{}
class NoteSuccessState extends NotesState{}
class NoteFailureState extends NotesState{
  final String error;

  NoteFailureState(this.error);
}