import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change : $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('close : $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('create : $bloc');

  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('error : $error');

  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('event: $event');

  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('transtion : $transition');

  }
  
}