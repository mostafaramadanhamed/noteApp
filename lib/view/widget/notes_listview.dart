import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/cubit/notes/notes_cubit.dart';
import 'package:whatsapp/cubit/notes/notes_states.dart';
import 'package:whatsapp/data/models/note_model.dart';
import 'package:whatsapp/view/widget/note_item.dart';

class NotesListview  extends StatelessWidget {
  const NotesListview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(
      builder: (context, state) {
        List<NoteModel>notes=BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical:16.0),
           child: ListView.builder(
              physics:const BouncingScrollPhysics(),
            itemCount: notes.length,
            padding: EdgeInsets.zero,
              itemBuilder:(context,index){
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: NoteItem(
                    note:notes[index],
                  ),
                );
              } ,
          ),
        );
      }
    );
  }
}
