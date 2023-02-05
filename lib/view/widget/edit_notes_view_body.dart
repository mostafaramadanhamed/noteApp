import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/cubit/notes/notes_cubit.dart';
import 'package:whatsapp/data/models/note_model.dart';
import 'package:whatsapp/view/widget/custom_appbar.dart';
import 'package:whatsapp/view/widget/custom_text_field.dart';

import '../constant.dart';
import 'color_list_view.dart';
import 'note_item.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({Key? key, required this.note}) : super(key: key);
final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
   String ? title , desc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
      height: MediaQuery.of(context).size.height/20,
      ),
          CustomAppBar(
          onTap: (){

            widget.note.title=title ?? widget.note.title;
            widget.note.subTitle=desc ?? widget.note.subTitle;
            widget.note.save();
            ScaffoldMessenger.of(context).showSnackBar( buildSnackBar(text: 'Note was edited successfully',color: kColors[8]),);
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
          icon: FontAwesomeIcons.check,
          title: 'Edit Note',
        ),
          SizedBox(
            height: MediaQuery.of(context).size.height/30,
          ),
           CustomTextFiled(
            onChange: (val){
              title=val;
            },
            hint: widget.note.title,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/30,
          ),
           CustomTextFiled(
             onChange: (val){
               desc=val;
             },
             hint: widget.note.subTitle,
             maxLines: 5,),
          EditNotesColorList(note: widget.note,),
        ],
      ),
    );
  }
}
class EditNotesColorList extends StatefulWidget {
  const EditNotesColorList({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  State<EditNotesColorList> createState() => _EditNotesColorListState();
}

class _EditNotesColorListState extends State<EditNotesColorList> {
   int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width/6,
      child: ListView.builder(
        itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: (){
              currentIndex=index;
              widget.note.color=kColors[index].value;
            //  BlocProvider.of<NotesCubit>(context).color=kColors[index];
              setState((){});
            },
            child: ColorItem(
              isSelected: currentIndex==index,
              color: kColors[index],
            ),
          ),
        ),
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}

