import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:whatsapp/bloc_observer.dart';
import 'package:whatsapp/data/models/note_model.dart';
import 'package:whatsapp/view/constant.dart';

import 'cubit/notes/notes_cubit.dart';
import 'view/notes_view.dart';

void main() async{

  await Hive.initFlutter();
  Bloc.observer=MyBlocObserver();
   Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kBoxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // var cubit= BlocProvider.of<NotesCubit>(context);

  return BlocProvider(
      create:(context) => NotesCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: Brightness.light,
              // scaffoldBackgroundColor: Colors.blue.withOpacity(.1),
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor:kPrimaryColor1,
                foregroundColor:kPrimaryColor,
              ),
              fontFamily: 'Poppins'
          ),
       //   themeMode:BlocProvider.of<NotesCubit>(context).isDark ?ThemeMode.dark:ThemeMode.light,
          home:const NotesView(),
        ),
    );
  }
}

