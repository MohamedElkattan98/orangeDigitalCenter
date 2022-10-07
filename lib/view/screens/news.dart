import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsSc extends StatelessWidget {
  const NewsSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'News',
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
                color: Colors.grey.shade400,
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
              padding: const EdgeInsets.only(right: 8, top: 12),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.deepOrange,
                    border: Border.all(
                      color: Colors.deepOrange,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 70, top: 22),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    size: 25,
                    Icons.share,
                    color: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 58, top: 18),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Container(height: 38, width: 1, color: Colors.white)),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 20, top: 22),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.copy,
                    size: 25,
                    color: Colors.white,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 430),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 440.0, left: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "ODC Supports All Universites",
                  style: TextStyle(
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
