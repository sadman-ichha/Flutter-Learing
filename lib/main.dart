// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'widgets/Navigation_Rail/navigation_rail.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationRaliWidgets(),
    );
  }
}
