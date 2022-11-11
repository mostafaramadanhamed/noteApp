import 'package:flutter/material.dart';
import 'package:whatsapp/view/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: TextStyle(
          fontSize: 25,
        ),),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
