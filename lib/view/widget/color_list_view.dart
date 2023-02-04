import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp/cubit/add_notes/add_notes_cubit.dart';

import '../constant.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isSelected, required this.color}) : super(key: key);
final bool isSelected;
final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected?CircleAvatar(
      radius: MediaQuery.of(context).size.width/12,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundColor: color,
        radius: MediaQuery.of(context).size.width/14,
      ),
    ) :CircleAvatar(
      backgroundColor: color,
      radius: MediaQuery.of(context).size.width/14,
    );
  }
}
class ColorListView extends StatefulWidget {
  const ColorListView({Key? key}) : super(key: key);

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex=0;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width/6,
      child: ListView.builder(
        itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: (){
              currentIndex=index;
              BlocProvider.of<AddNotesCubit>(context).color=colors[index];
              setState((){});
            },
            child: ColorItem(
              isSelected: currentIndex==index,
              color: colors[index],
            ),
          ),
        ),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}