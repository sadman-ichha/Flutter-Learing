import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),),
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text("Message Page"),
        ),
      ),
    );
  }
}