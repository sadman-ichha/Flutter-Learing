// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pratice/API%20Integration/helper/posts_helper.dart';
import 'package:flutter_pratice/API%20Integration/model/posts.dart';
import 'package:flutter_pratice/API%20Integration/post_details_sceen.dart';

class UserPostScreen extends StatefulWidget {
  @override
  State<UserPostScreen> createState() => _UserPostScreenState();
}

class _UserPostScreenState extends State<UserPostScreen> {
  List<Posts>? post = [];
  bool isVisible = false;

  getData() async {
    post = await PostHelper().getPosts();
    setState(() {
      isVisible = true;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Title"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: post!.length,
          itemBuilder: (_, index) {
            return Visibility(
              visible: isVisible,
              replacement: CircularProgressIndicator(),
              child: Card(
                elevation: 5,
                child: ListTile(
                  title: Text(post![index].title.toString()),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostDetailsScreen(
                          post![index].userId,
                          post![index].id,
                          post![index].body,
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }),
    );
  }
}
