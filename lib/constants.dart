import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moisback/view/screens/login.dart';

String? TOKEN;

enum ConfirmAction { Cancel, Accept }

Future<Future<ConfirmAction?>> asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Logout'),
        content: const Text('Are you sure ?'),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Cancel',
              style: TextStyle(fontSize: 16, color: Colors.deepOrange),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: const Text('Sure',
                style: TextStyle(fontSize: 16, color: Colors.blueGrey)),
            onPressed: () {
              //SystemNavigator.pop();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginSc()));
            },
          )
        ],
      );
    },
  );
}
