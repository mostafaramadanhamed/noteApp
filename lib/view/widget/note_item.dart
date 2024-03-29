import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/cubit/notes/notes_cubit.dart';
import 'package:whatsapp/data/models/note_model.dart';
import 'package:whatsapp/view/edit_notes_view.dart';

import '../constant.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);
final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(
          context, MaterialPageRoute(
          builder: (context)
          => EditNotesView(note: note,),
      ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color:  Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title:  Text(note.title,style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(note.subTitle,style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18,
                ),),
              ),
              trailing: IconButton(onPressed: (){
                note.delete();
                ScaffoldMessenger.of(context).showSnackBar( buildSnackBar(text: 'Note was deleted successfully',color: kColors[11]),);
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
                  icon:const Icon (FontAwesomeIcons.trash,color: Colors.black,size: 25,),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(note.date,style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 16
              ),),
            )
          ],
        ),
      ),
    );
  }


}
SnackBar buildSnackBar({required String text,required Color color}) {
  return SnackBar(
    content:  Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black54, width: 1),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            spreadRadius: 2.0,
            blurRadius: 8.0,
            offset: Offset(2, 4),
          )
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(text,
        style:  const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: kPrimaryColor
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    padding:  EdgeInsets.zero,
  );
}
