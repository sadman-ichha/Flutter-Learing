// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveAnimated extends StatefulWidget {
  @override
  State<RiveAnimated> createState() => _RiveAnimatedState();
}

class _RiveAnimatedState extends State<RiveAnimated> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400.0,
              width: 300.0,
              child: RiveAnimation.asset(
                "assets/animation/mixing-animations.riv",
                animations: [_value == false ? 'Intermediate' : "Beginner"],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _value = !_value;
                });
              },
              child: Text("Beginner"),
            ),
          ],
        ),
      ),
    );
  }
}
