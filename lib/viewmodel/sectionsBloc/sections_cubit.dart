import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';
import '../../model/sectionsModel.dart';
import '../database/network/dio_helper.dart';
import '../database/network/end_points.dart';
import 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());

  static SectionsCubit get(context) => BlocProvider.of(context);

  SectionsModel? dataModel;

  void getSections() {
    DioHelper.getData(url: userSectionsEndPoint, token: TOKEN).then((value) {
      dataModel = SectionsModel.fromJson(value.data);
      emit(SectionsCubitSuccess());
    }).catchError((error) {
      emit(SectionsCubitError());
      print(error.toString());
    });
  }
}
