import 'package:flutter/material.dart';

class SharedPreferencesDemo extends StatelessWidget {
  const SharedPreferencesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
              child: Text(
            "Data",
            style: TextStyle(fontSize: 20),
          )),
        ],
      ),
    );
  }
}
