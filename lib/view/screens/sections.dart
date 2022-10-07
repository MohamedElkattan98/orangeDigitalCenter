import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../viewmodel/lecturesCubit/lectures_cubit_cubit.dart';
import '../../viewmodel/lecturesCubit/lectures_cubit_state.dart';
import '../../viewmodel/sectionsBloc/sections_cubit.dart';
import '../../viewmodel/sectionsBloc/sections_state.dart';
import '../components/reusableComponents.dart';

class SectionsSc extends StatelessWidget {
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
            'Sections',
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
          create: (context) => SectionsCubit()..getSections(),
          child: BlocConsumer<SectionsCubit, SectionsState>(
            listener: (context, state) {},
            builder: (context, state) {
              SectionsCubit myCubit = SectionsCubit.get(context);
              return myCubit.dataModel == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: ((context, index) => LSMFcomponent(
                          subject:
                              myCubit.dataModel!.data![index].sectionSubject!)),
                      itemCount: myCubit.dataModel!.data!.length);
            },
          ),
        ));
  }
}
