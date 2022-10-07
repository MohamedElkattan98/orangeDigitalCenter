import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moisback/view/screens/addNote.dart';

class NotesSc extends StatelessWidget {
  const NotesSc({Key? key}) : super(key: key);

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
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text('Notes',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: Center(
        child: Text('There Is No Data To Show!',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddNoteSc()));
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blueGrey),
    );
  }
}
