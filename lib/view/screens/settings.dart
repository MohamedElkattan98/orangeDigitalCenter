import 'package:flutter/material.dart';
import 'package:moisback/view/components/reusableComponents.dart';
import 'package:moisback/view/screens/faq.dart';
import 'package:moisback/view/screens/parteners.dart';
import 'package:moisback/view/screens/support.dart';
import 'package:moisback/view/screens/terms.dart';

import '../../constants.dart';

class SettingsSc extends StatelessWidget {
  const SettingsSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text("Settings",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        body: Container(
          color: Colors.white,
          child: Column(children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => FaqSc()));
              },
              child: Settingscomponent(
                name: 'FAQ',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TermsSc()));
              },
              child: Settingscomponent(
                name: 'Terms & Conditions',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PartenersSc()));
              },
              child: Settingscomponent(
                name: 'Our Prteners',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SupportSc()));
              },
              child: Settingscomponent(
                name: 'Support',
              ),
            ),
            InkWell(
              onTap: () async {
                final Future<ConfirmAction?> action =
                    await asyncConfirmDialog(context);
              },
              child: Settingscomponent(
                name: 'Logout',
              ),
            ),
          ]),
        ));
  }
}
