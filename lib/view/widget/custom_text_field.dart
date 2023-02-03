
import 'package:flutter/material.dart';

import '../constant.dart';
class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({Key? key,
    this.onChange ,
    required this.hint,
     this.maxLines=1,
    this.onSaved,
  }) : super(key: key) ;

 final String ?hint;
 final void Function(String?)? onSaved;
 final Function(String) ? onChange;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        onChanged: onChange,
        onSaved: onSaved,
        validator: (val){
          if(val?.isEmpty??true){
            return 'Field is required';
          }
          else {
            return null;
          }
        },
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
        //  fillColor: SBackgroundColor,
          hintText: hint,
          hintStyle:const TextStyle(
            color: kPrimaryColor
          ),
          errorBorder:buildBorder(border: 16, color: Colors.red),
          focusedBorder: buildBorder(border: 16, color: Colors.white),
          enabledBorder: buildBorder(border: 16, color: kPrimaryColor),
          border:buildBorder(border: 16, color: Colors.grey)
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({
  required double border,
    required Color color,
}) {
    return OutlineInputBorder(
            borderSide:  BorderSide(
              color: color,
            ),
            borderRadius: BorderRadius.circular(border)
        );
  }
}
