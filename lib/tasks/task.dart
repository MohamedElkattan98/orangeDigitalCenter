import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  List<Widget> list = [];
  String name = 'Flutter';
  Color c = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                children: list,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.new_label),
            onPressed: (() {
              setState(() {
                list.add(Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    name.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, color: c),
                  ),
                ));
                name == 'Flutter' ? name = 'Dart' : name = 'Flutter';
                name == 'Flutter' ? c = Colors.teal : c = Colors.pink;
              });
            }),
          ),
        ));
  }
}
