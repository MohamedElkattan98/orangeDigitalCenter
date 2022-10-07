import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:moisback/view/screens/homeS.dart';
import 'package:moisback/view/screens/settings.dart';

import '../../view/screens/news.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int index = 0;
  List<Widget> screens = [
    HomeSc(),
    NewsSc(),
    SettingsSc(),
  ];

  void toNews(context) {
    emit(NavBarState());
  }
}
