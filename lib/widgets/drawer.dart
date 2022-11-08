// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: Drawer(
          backgroundColor: Colors.purpleAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )),
        ),
        appBar: AppBar(
          title: Text("Drawer"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              _globalKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                _globalKey.currentState!.openDrawer();
              },
              child: Text("Drawer")),
        ),
      ),
    );
  }
}
