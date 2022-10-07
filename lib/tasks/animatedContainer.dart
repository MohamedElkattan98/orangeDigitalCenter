import 'package:flutter/material.dart';

class AnimatedContainerr extends StatefulWidget {
  @override
  State<AnimatedContainerr> createState() => _AnimatedContainerrState();
}

class _AnimatedContainerrState extends State<AnimatedContainerr> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                child: AnimatedContainer(
                  width: selected ? 200.0 : 100.0,
                  height: selected ? 100.0 : 200.0,
                  color: selected ? Colors.red : Colors.blue,
                  alignment: selected
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: const FlutterLogo(size: 75),
                ),
              ),
            )
          ],
        )),
      )),
    );
  }
}
