import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:whatsapp/bloc_observer.dart';
import 'package:whatsapp/data/models/note_model.dart';
import 'package:whatsapp/view/constant.dart';

import 'view/notes_view.dart';

void main() async{
  Bloc.observer=MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
 await Hive.openBox<NoteModel>(kBoxName);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      home:const NotesView(),
    );
  }
}

