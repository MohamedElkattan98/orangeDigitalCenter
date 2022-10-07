import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moisback/viewmodel/homecubit/home_cubit.dart';
import '../../viewmodel/homecubit/home_state.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          HomeCubit myCubit = HomeCubit.get(context);
          return Scaffold(
              backgroundColor: Colors.grey.shade100,
              body: myCubit.screens[myCubit.index],
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: Colors.deepOrange,
                onTap: (val) {
                  myCubit.index = val;
                  myCubit.toNews(context);
                },
                currentIndex: myCubit.index,
                type: BottomNavigationBarType.shifting,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.grey),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.newspaper, color: Colors.grey),
                    label: 'News',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings, color: Colors.grey),
                    label: 'Settings',
                  ),
                ],
              ));
        },
      ),
    );
  }
}
