import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:moisback/view/screens/home.dart';
import 'package:moisback/viewmodel/database/network/dio_helper.dart';
import 'package:moisback/viewmodel/database/network/end_points.dart';

import '../../constants.dart';
import '../../model/loginmodel.dart';
import 'loginbloc_states.dart';

class LoginblocCubit extends Cubit<LoginblocState> {
  LoginblocCubit() : super(LoginblocInitial());

  static LoginblocCubit get(context) => BlocProvider.of(context);

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  LoginModel? modelData;

  void login(context) {
    var json = {
      "email": email.text.toString(),
      "password": password.text.toString(),
    };

    DioHelper.postData(url: loginEndPoint, data: json).then((value) {
      if (value.statusCode == 200) {
        //success
        modelData = LoginModel.fromJson(value.data);
        TOKEN = modelData!.data!.accessToken!.toString();

        if (TOKEN != "" || TOKEN!.isNotEmpty || TOKEN != null) {
          emit(SuccessState());
          print(TOKEN.toString());
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp()),
          );
        }
      }
    }).catchError((error) {
      emit(ErrorState());
      print(error.toString());
    });
  }

      var obscureText = true;
void fun(){
  obscureText = !obscureText;
  emit(ValidateState());
}


  }

