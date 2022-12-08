import 'package:flutter/material.dart';

import '../constant.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: CustomTextFiled( hint: 'Title',),
        ),
        CustomTextFiled(hint: 'Det',maxLines: 5,),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            color: kPrimaryColor,
            minWidth:150,
            height: 40,
            onPressed: (){},
          child: Text('Add'),),
        )
      ],
      ),
    );
  }
}
