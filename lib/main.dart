// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pratice/provider/eligibility_provider_screen.dart';
import 'package:flutter_pratice/shared%20preferences/shared_pref_demo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => EligibilityProviderScreen(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: SharedPreferencesDemo(),
    );
  }
}
