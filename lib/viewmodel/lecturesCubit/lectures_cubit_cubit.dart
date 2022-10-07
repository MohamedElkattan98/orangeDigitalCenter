import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:moisback/model/lecturesModel.dart';
import 'package:moisback/viewmodel/database/network/dio_helper.dart';
import 'package:moisback/viewmodel/database/network/end_points.dart';

import '../../constants.dart';
import 'lectures_cubit_state.dart';

class LecturesCubitCubit extends Cubit<LecturesCubitState> {
  LecturesCubitCubit() : super(LecturesCubitInitial());

  static LecturesCubitCubit get(context) => BlocProvider.of(context);

  LecturesModel? dataModel;

  void getLectures() {
    DioHelper.getData(url: lectureEndPoint, token: TOKEN).then((value) {
      dataModel = LecturesModel.fromJson(value.data);
      debugPrint(dataModel.toString());
      emit(LecturesCubitSuccess());
    }).catchError((error) {
      emit(LecturesCubitError());
      print(error.toString());
    });
  }
}
