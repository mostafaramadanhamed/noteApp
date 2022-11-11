import 'package:flutter/material.dart';
import 'package:whatsapp/view/widget/note_item.dart';

class NotesListview  extends StatelessWidget {
  const NotesListview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder:(context,index){
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: NoteItem(),
          );
        } ,
    );
  }
}
