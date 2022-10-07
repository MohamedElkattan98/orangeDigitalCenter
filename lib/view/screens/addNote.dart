import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddNoteSc extends StatelessWidget {
  String datetime = DateTime.now().toString();
  var dt = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.deepOrange,
              )),
          title: Text('Add Note',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        body: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                keyboardType: TextInputType.text,
                cursorColor: Colors.blueGrey,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 2.0,
                    ),
                  ),
                  label: Text("Title"),
                  // hintText: '2-10-2022',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  cursorColor: Colors.blueGrey,
                  decoration: InputDecoration(
                      label: Text('Date'),
                      hintText: (datetime),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                          width: 2.0,
                        ),
                      ))),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                maxLines: 4,
                keyboardType: TextInputType.text,
                cursorColor: Colors.blueGrey,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                        width: 2.0,
                      ),
                    ),
                    hintText: 'Note',
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140.0),
              child: Center(
                  child: Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {},
                    label: Text(
                      'Add',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              )),
            ),
          ],
        ));
  }
}
