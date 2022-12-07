import 'package:flutter/material.dart';

import 'widget/edit_notes_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNotesViewBody(),
    );
  }
}
