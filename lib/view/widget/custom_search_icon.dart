import 'package:flutter/material.dart';

class  CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key, required this.icon, this.onTap}) : super(key: key);
final IconData icon;
final  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap:onTap ,
      child: Container(
      height:45 ,
      width: 45,
      decoration: BoxDecoration(
  color: Colors.black.withOpacity(.06),
  borderRadius: BorderRadius.circular(16),
  ),
  child:  Center(child: Icon(icon,size: 25,)),

      ),
    );
  }
}
