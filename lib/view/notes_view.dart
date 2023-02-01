import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/cubit/notes/notes_cubit.dart';
import 'package:whatsapp/view/widget/add_note_bottomsheet.dart';

import 'widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context)=>NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: ( ){
          showModalBottomSheet(
            isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              context: context, builder: (context){
            return const AddNoteBottomSheet();
          });
        },child:const Icon(Icons.add),),
        body: const NotesViewBody(),
      ),
    );
  }
}
