import 'package:flutter/material.dart';

import '../../data/models/note_model.dart';
import '../constant.dart';
import 'color_list_view.dart';

class EditNotesColorList extends StatefulWidget {
  const EditNotesColorList({Key? key, required this.note}) : super(key: key);

  final NoteModel note;

  @override
  State<EditNotesColorList> createState() => _EditNotesColorListState();
}

class _EditNotesColorListState extends State<EditNotesColorList> {
  late int currentIndex;
  @override
  void initState() {

    currentIndex=kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
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
