import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:moisback/viewmodel/countercubit/countercubit_cubit.dart';
import 'package:moisback/viewmodel/countercubit/countercubit_state.dart';



class CounterWithBloc extends StatelessWidget {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountercubitCubit(),
      child: BlocConsumer<CountercubitCubit, CountercubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          CountercubitCubit myCubit = CountercubitCubit.get(context);
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                body: SafeArea(
                    child: Center(
                        child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        myCubit.decrement();
                      },
                      icon: Icon(Icons.remove),
                    ),
                    Text(myCubit.value.toString()), //value.toString()
                    IconButton(
                      onPressed: () {
                        myCubit.increment();
                      },
                      icon: Icon(Icons.add),
                    ),
                  ],
                ))),
              ));
        },
      ),
    );
  }
}
