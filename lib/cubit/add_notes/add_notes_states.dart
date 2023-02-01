abstract class AddNotesStates{}
class AddNotesInitialState extends AddNotesStates{}
// Add Note
class AddNoteLoadingState extends AddNotesStates{}
class AddNoteSuccessState extends AddNotesStates{}
class AddNoteIErrorState extends AddNotesStates{
  final String error;

  AddNoteIErrorState(this.error);
}
// Edit Note
class EditNoteLoadingState extends AddNotesStates{}
class EditNoteSuccessState extends AddNotesStates{}
class EditNoteFailureState extends AddNotesStates{
  final String error;

  EditNoteFailureState(this.error);
}
// Delete Note
class DeleteNoteLoadingState extends AddNotesStates{}
class DeleteNoteSuccessState extends AddNotesStates{}
class DeleteNoteFailureState extends AddNotesStates{
  final String error;

  DeleteNoteFailureState(this.error);
}

