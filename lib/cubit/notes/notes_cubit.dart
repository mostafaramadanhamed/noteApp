import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:whatsapp/cubit/notes/notes_states.dart';

import '../../data/models/note_model.dart';
import '../../view/constant.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit():super(NoteInitialState());

  fetchAllNotes() {
    try{
      var notesBox=Hive.box<NoteModel>(kBoxName);
      List<NoteModel>notes=notesBox.values.toList();
      emit(NoteSuccessState( notes ));
    }
    catch(ex){
      emit(NoteFailureState(ex.toString()));
    }
  }

}