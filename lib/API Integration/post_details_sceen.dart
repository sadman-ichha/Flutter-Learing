import 'dart:html';

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
            Text("User Id :${userId.toString()}", style: TextStyle(fontSize: 25)),
            SizedBox(height: 10),
            Text("")
          ],
        ),
      ),
    );
  }
}
