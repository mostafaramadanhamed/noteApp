import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/view/widget/custom_appbar.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
      height: MediaQuery.of(context).size.height/20,
      ),
        const  CustomAppBar(
          icon: FontAwesomeIcons.check,
          title: 'Edit Note',
        ),

        ],
      ),
    );
  }
}
