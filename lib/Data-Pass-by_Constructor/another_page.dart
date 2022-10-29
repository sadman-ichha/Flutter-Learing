// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AnotherPage extends StatelessWidget {
  String? message;
  int? age;

  //optional perameter & name perameter  with multiline constructor

  AnotherPage(context, String text, {required int agess}) {
    message = text;
    age = agess;
    Fluttertoast.showToast(msg: "Passing data via Constructor");
  }

  //optional perameter & name perameter  with oneLine constructor
  // AnotherPage(this.age, {required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Another Page"),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message!,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            Text(
              age.toString(),
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () => Navigator.pop(context), child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
