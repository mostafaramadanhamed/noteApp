import 'package:flutter/material.dart';
import 'package:whatsapp/view/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onTap}) : super(key: key);
final String title;
final IconData icon;
final  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Text(title,
            style: const TextStyle(
          fontSize: 25,
        ),),
           const Spacer(),
         CustomSearchIcon(icon:icon,onTap:onTap ,)
      ],
    );
  }
}
