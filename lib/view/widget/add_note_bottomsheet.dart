import 'package:flutter/material.dart';

import '../constant.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey =GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String ? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: CustomTextFiled( hint: 'Title',),
        ),
        CustomTextFiled(hint: 'Details',maxLines: 5,),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            color: kPrimaryColor,
            minWidth:150,
            height: 40,
            onPressed: (){},
          child: const Text('Add'),),
        )
      ],
      ),
    );
  }
}
