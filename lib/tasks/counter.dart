import 'package:flutter/material.dart';

class StateCounter extends StatefulWidget {
  @override
  State<StateCounter> createState() => _StateCounterState();
}

class _StateCounterState extends State<StateCounter> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Center(
                child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  value--;
                });
              },
              icon: Icon(Icons.remove),
            ),
            Text('${value}'), //value.toString()
            IconButton(
              onPressed: () {
                setState(() {
                  value++;
                });
              },
              icon: Icon(Icons.add),
            ),
          ],
        ))),
      ),
    );
  }
}
