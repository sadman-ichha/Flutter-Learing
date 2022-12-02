import 'package:flutter/material.dart';
import 'package:flutter_pratice/API%20Integration/user_post_screen.dart';

import 'helper/posts_helper.dart';
import 'model/posts.dart';

class ApiHomeScreen extends StatelessWidget {
  List<Posts>? post = [];
  void getData() async {
    post = await PostHelper().getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getData();
          },
          child: Text("Call Api"),
        ),
      ),
    );
  }
}
