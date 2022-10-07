import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moisback/view/components/reusableComponents.dart';
import 'package:moisback/viewmodel/lecturesCubit/lectures_cubit_cubit.dart';

import '../../viewmodel/lecturesCubit/lectures_cubit_state.dart';

class LecturesSc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.deepOrange)),
          title: Text(
            'Lectures',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            Icon(
              Icons.filter_alt,
              color: Colors.deepOrange,
              size: 30,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: BlocProvider(
          create: (context) => LecturesCubitCubit()..getLectures(),
          child: BlocConsumer<LecturesCubitCubit, LecturesCubitState>(
            listener: (context, state) {},
            builder: (context, state) {
              LecturesCubitCubit myCubit = LecturesCubitCubit.get(context);
              return myCubit.dataModel == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: ((context, index) => LSMFcomponent(
                          subject:
                              myCubit.dataModel!.data![index].lectureSubject!)),
                      itemCount: myCubit.dataModel!.data!.length);
            },
          ),
        ));
  }
}
