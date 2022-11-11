import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFCC85),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('First notes',style:  TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),),
            subtitle:  Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('First notes how are you my friend good job ',style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 18,
              ),),
            ),
            trailing: IconButton(onPressed: (){},
                icon:const Icon (FontAwesomeIcons.trash,color: Colors.black,size: 25,),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text('09Nov 2022',style: TextStyle(
              color: Colors.black.withOpacity(.5),
              fontSize: 16
            ),),
          )
        ],
      ),
    );
  }
}
