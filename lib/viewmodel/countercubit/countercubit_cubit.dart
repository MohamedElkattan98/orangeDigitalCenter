import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moisback/viewmodel/countercubit/countercubit_state.dart';



class CountercubitCubit extends Cubit<CountercubitState> {
  CountercubitCubit() : super(CountercubitInitial());

  static CountercubitCubit get(context) => BlocProvider.of(context);

  int value = 0;

  void increment() {
    value++;
    emit(IncrementState());
  }

  void decrement() {
    value--;
    emit(decrementState());
  }
}
