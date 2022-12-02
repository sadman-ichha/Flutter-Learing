// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PostDetailsScreen extends StatelessWidget {
  int? userId;
  int? id;
  String? body;
  PostDetailsScreen(this.userId, this.id, this.body);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("User Id: ${userId.toString()}",
                style: TextStyle(fontSize: 25)),
            SizedBox(height: 10),
            Text("Id: ${id.toString()}", style: TextStyle(fontSize: 25)),
            SizedBox(height: 10),
            Text("Body: ${body.toString()}", style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
