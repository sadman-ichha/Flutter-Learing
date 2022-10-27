// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pratice/widgets/Navigation_Rail/page_four.dart';
import 'package:flutter_pratice/widgets/Navigation_Rail/page_one.dart';
import 'package:flutter_pratice/widgets/Navigation_Rail/page_three.dart';
import 'package:flutter_pratice/widgets/Navigation_Rail/page_two.dart';

class NavigationRaliWidgets extends StatefulWidget {
  @override
  State<NavigationRaliWidgets> createState() => _NavigationRaliWidgetsState();
}

class _NavigationRaliWidgetsState extends State<NavigationRaliWidgets> {
  int _selectedIndex = 0;
  final List _pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            NavigationRail(
              elevation: 15.0,
              useIndicator: true,
              labelType: NavigationRailLabelType.all,
              selectedLabelTextStyle: TextStyle(color: Colors.black),
              backgroundColor: Colors.grey,
              indicatorColor: Colors.cyan,
              minWidth: 80.0,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: [
                NavigationRailDestination(
                    icon: Icon(Icons.wifi, color: Colors.black),
                    label: Text("Wifi")),
                NavigationRailDestination(
                    icon: Icon(Icons.favorite_border, color: Colors.black),
                    label: Text("favorite")),
                NavigationRailDestination(
                    icon:
                        Icon(Icons.linked_camera_outlined, color: Colors.black),
                    label: Text("Camera")),
                NavigationRailDestination(
                    icon: Icon(Icons.house, color: Colors.black),
                    label: Text("Home")),
              ],
            ),
            Expanded(
                child: Container(
              child: _pages[_selectedIndex],
            )),
          ],
        ),
      ),
    );
  }
}
