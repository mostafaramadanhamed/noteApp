import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:whatsapp/cubit/notes_cubit.dart';
import 'package:whatsapp/cubit/notes_states.dart';

import 'add_note_form.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>NotesCubit(),
      child: BlocConsumer<NotesCubit,NotesStates>(

          listener: ( context, state){
            if(state is AddNoteIErrorState){
              debugPrint('Error ${state.error}');
            }
            if(state is AddNoteSuccessState){
              Navigator.pop(context);
            }
          } ,
          builder: ( context, state) {
            return  Padding(
              padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.height/50),
              child: const SingleChildScrollView(child:  AddNoteForm()),
            );
          },
       ),
    );
  }
}

