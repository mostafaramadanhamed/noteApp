import 'package:flutter/material.dart';

import '../constant.dart';
import 'custom_text_field.dart';

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
            padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/50),
            child: CustomTextFiled( hint: 'Title',onSaved: (val){
              title=val;
            },),
          ),
          CustomTextFiled(hint: 'Details',maxLines: 5,onSaved: (val){
            subTitle=val;
          },),
          SizedBox(
            height: MediaQuery.of(context).size.height/20,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/50,vertical: MediaQuery.of(context).size.height/50),
            child: MaterialButton(
              color: kPrimaryColor,
              minWidth:MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/16,
              onPressed: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }
                else{
                  autovalidateMode=AutovalidateMode.always;
                  setState((){});
                }
              },
              child: const Text('Add'),),
          )
        ],
      ),
    );
  }
}