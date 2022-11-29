import 'package:flutter/material.dart';
import 'package:flutter_pratice/API%20Integration/helper/posts_helper.dart';
import 'package:flutter_pratice/API%20Integration/model/posts.dart';

class UserPostScreen extends StatelessWidget {
  List<Posts>? post;

  getData() async {
    var posts = await PostHelper().getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: post!.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(post![index].title.toString()),
            );
          }),
    );
  }
}
