import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moisback/viewmodel/printbloc/printbloc_cubit.dart';

class PrintBloc extends StatelessWidget {
  const PrintBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PrintblocCubit(),
      child: BlocConsumer<PrintblocCubit, PrintblocState>(
        listener: (context, state) {},
        builder: (context, state) {
          PrintblocCubit myCubit = PrintblocCubit.get(context);

          return MaterialApp(
            home: Scaffold(
                body: SafeArea(
                    child: Center(
                        child: Column(
              children: [
                TextFormField(
                  controller: myCubit.c,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      myCubit.onPrintF();
                    },
                    child: Text('Click to print')),
                SizedBox(height: 10),
                Text(myCubit.text.toString()),
              ],
            )))),
          );
        },
      ),
    );
  }
}
