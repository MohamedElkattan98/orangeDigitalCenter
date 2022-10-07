import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moisback/view/screens/sections.dart';

import 'events.dart';
import 'finals.dart';
import 'lectures.dart';
import 'midterms.dart';
import 'notes.dart';

class HomeSc extends StatelessWidget {
  const HomeSc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Orange ",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Text(
                'Digital Center',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )
            ]),
            Row(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(right: 15, left: 15, top: 35),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LecturesSc()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 120,
                            width: 150,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          Positioned(
                            right: 44,
                            top: 10,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              foregroundColor: Colors.deepOrange,
                              radius: 35,
                              child: Icon(Icons.menu_book, size: 55),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 90),
                            child: Text(
                              'Lectures',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  width: 30,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SectionsSc()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                          Positioned(
                            right: 44,
                            top: 10,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              foregroundColor: Colors.deepOrange,
                              radius: 35,
                              child: Icon(Icons.people, size: 55),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 90),
                            child: Text(
                              'Sections',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(right: 15, left: 15, top: 35),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MidtermsSc()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                          Positioned(
                            right: 44,
                            top: 10,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              foregroundColor: Colors.deepOrange,
                              radius: 35,
                              child: Icon(Icons.book, size: 55),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 90),
                            child: Text(
                              'Midterms',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  width: 30,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FinalsSC()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                          Positioned(
                            right: 44,
                            top: 10,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              foregroundColor: Colors.deepOrange,
                              radius: 35,
                              child: Icon(Icons.book, size: 55),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48, top: 90),
                            child: Text(
                              'Finals',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.only(right: 15, left: 15, top: 35),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EventsSc()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                          Positioned(
                            right: 44,
                            top: 10,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              foregroundColor: Colors.deepOrange,
                              radius: 35,
                              child: Icon(Icons.event, size: 55),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45, top: 90),
                            child: Text(
                              'Events',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  width: 30,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NotesSc()),
                        );
                      },
                      child: Stack(
                        children: [
                          Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                          Positioned(
                            right: 44,
                            top: 10,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              foregroundColor: Colors.deepOrange,
                              radius: 35,
                              child: Icon(Icons.note_add, size: 55),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45, top: 90),
                            child: Text(
                              'Notes',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
