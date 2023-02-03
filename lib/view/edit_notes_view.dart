import 'package:flutter/material.dart';

import '../data/models/note_model.dart';
import 'widget/edit_notes_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({Key? key, required this.note}) : super(key: key);
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNotesViewBody(note: note,),
    );
  }
}
