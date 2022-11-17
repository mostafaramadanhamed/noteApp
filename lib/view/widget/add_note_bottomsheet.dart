import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomTextFiled(type: TextInputType.text, hint: 'Title',),
        CustomTextFiled(hint: 'Det', type: TextInputType.multiline,),
        Spacer(),
        ElevatedButton(
            style: ButtonStyle(
            ),
            onPressed: (){},
            child: Text('add'))
      ],
      ),
    );
  }
}
