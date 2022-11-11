import 'package:flutter/material.dart';
import 'package:whatsapp/view/widget/custom_appbar.dart';
import 'notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 25
            ,),
           CustomAppBar(),
          Expanded(
              child:  NotesListview()),
        ],
      ),
    );
  }
}
