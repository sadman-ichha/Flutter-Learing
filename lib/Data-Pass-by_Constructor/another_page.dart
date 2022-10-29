// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  String catchData;
  AnotherPage(this.catchData) {
    print("fatch Data");
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
            SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () => Navigator.pop(context), child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
