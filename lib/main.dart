// ignore_for_file: prefer_const_constructors
import 'dart:ui';

import 'package:flutter/material.dart';

import 'widgets/date&time_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DateTimePicker(),
    );
  }
}
