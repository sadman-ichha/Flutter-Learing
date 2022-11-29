// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pratice/provider/eligibility_provider_screen.dart';
import 'package:provider/provider.dart';
import 'API Integration/user_post_screen.dart';

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
      debugShowCheckedModeBanner: false,
      home: UserPostScreen(),
    );
  }
}
