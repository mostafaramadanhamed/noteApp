import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blueGrey,
      radius: MediaQuery.of(context).size.width/13,
    );
  }
}
class ColorListView extends StatelessWidget {
  const ColorListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width/6,
      child: ListView.builder(
        itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(2.5),
          child: ColorItem(),
        ),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}