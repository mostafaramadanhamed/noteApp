
import 'package:flutter/material.dart';

import '../constant.dart';
class CustomTextFiled extends StatelessWidget {
  CustomTextFiled({Key? key,
    this.onChange ,
    required this.hint,
     this.maxLines=1,
  }) : super(key: key) ;
 final String ?hint;
  Function(String) ? onChange;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        onChanged: onChange,
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
        //  fillColor: SBackgroundColor,
          hintText: hint,
          hintStyle:const TextStyle(
            color: kPrimaryColor
          ),
          errorBorder:buildBorder(border: 16, color: Colors.red),
          focusedBorder: buildBorder(border: 16, color: kPrimaryColor),
          enabledBorder: buildBorder(border: 16, color: Colors.white),
          border:buildBorder(border: 16, color: Colors.white)
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
