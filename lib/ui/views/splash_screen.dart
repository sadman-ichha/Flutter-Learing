// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/splash.jpg'),fit: BoxFit.cover),
      )),
    );
  }
}
