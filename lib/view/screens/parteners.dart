import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PartenersSc extends StatelessWidget {
  const PartenersSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.deepOrange)),
        title: Text(
          'Our Parteners',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30),
        child: Stack(
          children: [
            Container(
              height: 240,
              width: 340,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.white,
                    Colors.grey,
                  ],
                ),
                border: Border.all(
                  color: Colors.grey.shade400,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                top: 12.0,
              ),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('ODCs',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 22))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 500),
              child: Align(
                alignment: Alignment.center,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Orange ",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  Text(
                    'Digital Center',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
