// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  String? catchData;
  int? age;
  //optional perameter with name perameter constructor
  AnotherPage(this.age, {required this.catchData}) {
    print('First');
    print('End');
  }

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
            Text(
              catchData!,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
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
