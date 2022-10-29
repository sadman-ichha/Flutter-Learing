// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'another_page.dart';

class DataPassByConstructor extends StatelessWidget {
  String _message = "We learn Flutter";
  int _age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              "Click",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    AnotherPage(context,_message, agess: _age))),
      ),
    ));
  }
}
