import 'package:flutter/material.dart';
import 'package:moisback/view/components/reusableComponents.dart';

class MidtermsSc extends StatelessWidget {
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
          'Midterms',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            LSMFcomponent(subject: 'Flutter'),
            LSMFcomponent(subject: 'React'),
            LSMFcomponent(subject: 'Vue'),
            LSMFcomponent(subject: 'Flutter'),
            LSMFcomponent(subject: 'React'),
            LSMFcomponent(subject: 'Vue'),
          ],
        ),
      ),
    );
  }
}
