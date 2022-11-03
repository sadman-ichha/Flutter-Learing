// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveAnimated extends StatelessWidget {
  const RiveAnimated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 400.0,
            width: 300.0,
            child: RiveAnimation.asset(
              "assets/animation/mixing-animations.riv",
              animations: ["Expert", "Beginner",'Intermediate'],
            )),
      ),
    );
  }
}
