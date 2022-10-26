import 'dart:math';

import 'package:flutter/material.dart';

class TransformWidgets extends StatelessWidget {
  const TransformWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    color: Colors.black54,
                    child: Image.network(
                      "https://images.unsplash.com/photo-1507608616759-54f48f0af0ee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 90.0),
                Transform.scale(
                  scale: 1.5,
                  child: Tooltip(
                    message: "Container",
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.black54,
                      child: Image.network(
                        "https://images.unsplash.com/photo-1453060590797-2d5f419b54cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.0),
                Transform(
                  transform: Matrix4.skewX(0.2),
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    color: Colors.black54,
                    child: Image.network(
                      "https://images.unsplash.com/photo-1507608616759-54f48f0af0ee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 50.0),
                Container(
                  color: Colors.black,
                  child: Transform(
                    alignment: Alignment.topRight,
                    transform: Matrix4.skewY(0.3)..rotateZ(pi / 12.0),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: const Color(0xFFE8581C),
                      child: const Text('Apartment for rent!'),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(50, 50),
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    color: Colors.black54,
                    child: Image.network(
                      "https://images.unsplash.com/photo-1507608616759-54f48f0af0ee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
