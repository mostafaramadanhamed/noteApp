import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/cubit/notes/notes_states.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit():super(NoteInitialState());


}