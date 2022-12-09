abstract class NotesStates{}
class InitialState extends NotesStates{}
// Add Note
class AddNoteLoadingState extends NotesStates{}
class AddNoteSuccessState extends NotesStates{}
class AddNoteIErrorState extends NotesStates{
  final String error;

  AddNoteIErrorState(this.error);
}
// Edit Note
class EditNoteLoadingState extends NotesStates{}
class EditNoteSuccessState extends NotesStates{}
class EditNoteFailureState extends NotesStates{
  final String error;

  EditNoteFailureState(this.error);
}
// Delete Note
class DeleteNoteLoadingState extends NotesStates{}
class DeleteNoteSuccessState extends NotesStates{}
class DeleteNoteFailureState extends NotesStates{
  final String error;

  DeleteNoteFailureState(this.error);
}

