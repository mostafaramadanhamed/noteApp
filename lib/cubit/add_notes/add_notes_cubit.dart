import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:whatsapp/data/models/note_model.dart';
import '../../view/constant.dart';
import 'add_notes_states.dart';

class AddNotesCubit extends Cubit<AddNotesStates>{

  AddNotesCubit() : super(AddNotesInitialState());

addNote(NoteModel note)async{
  emit(AddNoteLoadingState());
  try{
    var notesBox=Hive.box<NoteModel>(kBoxName);
    await notesBox.add(note);
    emit(AddNoteSuccessState());
  }
      catch(ex){
        emit(AddNoteIErrorState(ex.toString()));
      }
}



}