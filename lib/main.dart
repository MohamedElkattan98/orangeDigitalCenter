import 'package:flutter/material.dart';
import 'package:moisback/view/screens/login.dart';
import 'package:moisback/viewmodel/database/network/dio_helper.dart';

void main() async {
  await DioHelper.init();

  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginSc()));

}
