import 'package:flutter/material.dart';
import 'package:whatsapp/view/widget/custom_appbar.dart';

import 'note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 25
            ,),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}
