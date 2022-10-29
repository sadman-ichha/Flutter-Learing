// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Data-Pass-by_Constructor/data_pass_by_constructor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DataPassByConstructor(),
    );
  }
}
