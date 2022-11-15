import 'package:flutter/material.dart';

class ConnectivityCheck extends StatelessWidget {
  const ConnectivityCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: ElevatedButton(onPressed: (){}, child: Text("Check")),
      ),
    );
  }
}