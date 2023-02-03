import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/view/widget/custom_appbar.dart';
import '../../cubit/notes/notes_cubit.dart';
import 'notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:  [
          SizedBox(
            height: MediaQuery.of(context).size.height/20,
            ),
          const CustomAppBar(icon: Icons.search, title: 'Notes',),
          const Expanded(
              child:  NotesListview()),
        ],
      ),
    );
  }
}
