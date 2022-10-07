import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

part 'printbloc_state.dart';

class PrintblocCubit extends Cubit<PrintblocState> {
  PrintblocCubit() : super(PrintblocInitial());

  static PrintblocCubit get(context) => BlocProvider.of(context);

  TextEditingController c = TextEditingController();
  String text='';

  onPrintF() {
    text = c.toString();
    PrintState();
  }
}
