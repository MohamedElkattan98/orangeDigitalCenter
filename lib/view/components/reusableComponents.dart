import 'package:flutter/material.dart';

Widget Settingscomponent({required String name}) {
  return GestureDetector(
    child: Column(
      children: [
        ListTile(leading: Text(name), trailing: Icon(Icons.arrow_forward)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
              height: 1, color: Colors.grey.shade300, width: double.infinity),
        ),
      ],
    ),
  );
}

Widget LSMFcomponent({
  String? subject,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Text(subject!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.alarm),
                    SizedBox(width: 5),
                    Text('2hrs'),
                    SizedBox(width: 5),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lecture Day',
                          style: TextStyle(fontSize: 10, color: Colors.grey)),
                      Row(
                        children: [
                          Icon(Icons.calendar_month, size: 20),
                          Text('Thursday',
                              style: TextStyle(
                                fontSize: 10,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Start time',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey)),
                          Row(
                            children: [
                              Icon(Icons.timelapse,
                                  size: 20, color: Colors.green),
                              Text('12:00pm',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('End Time',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey)),
                          Row(
                            children: [
                              Icon(Icons.timelapse,
                                  size: 20, color: Colors.red),
                              Text('2:00pm',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ]),
        ),
      )
    ],
  );
}

Widget textFieldComponent(
    {required TextEditingController text,
    required TextInputType type,
    required IconData icon1,
    required bool isPassword,
    required String fieldtext,
    IconData? suffix,
    required Function fun}) {
  return TextFormField(
    controller: text,
    keyboardType: type,
    obscureText: isPassword,
    decoration: InputDecoration(
        border: OutlineInputBorder(),
        icon: Icon(icon1),
        labelText: fieldtext,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  fun();
                },
                icon: Icon(suffix))
            : null),
    validator: (value) {
      if (value == '') {
        return ('this field must not be empty');
      }
    },
  );
}
