import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityCheck extends StatelessWidget {
  StreamSubscription? subscription;

  Future checkConnection(context) async {
    var connectivityRes = await Connectivity().checkConnectivity();
    if (connectivityRes == ConnectivityResult.mobile) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Connected to mobile network")),
      );
    } else if (connectivityRes == ConnectivityResult.wifi) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Connected to Wifi network")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("No Internet")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connectivity Check",
            style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
        elevation: 9,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              checkConnection(context);
            },
            child: Text("Check")),
      ),
    );
  }
}
