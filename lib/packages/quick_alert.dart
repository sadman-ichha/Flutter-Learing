// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class QuickAlertPackages extends StatelessWidget {
  const QuickAlertPackages({Key? key}) : super(key: key);

  showAlert(BuildContext context) {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      text: 'Transaction Completed Successfully!',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quick Alert"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showAlert(context);
                },
                child: Text("Success")),
            ElevatedButton(
                onPressed: () {
                  showAlert(context);
                },
                child: Text("Error")),
            ElevatedButton(
                onPressed: () {
                  showAlert(context);
                },
                child: Text("Warning ")),
            ElevatedButton(
                onPressed: () {
                  showAlert(context);
                },
                child: Text("Info")),
            ElevatedButton(
                onPressed: () {
                  showAlert(context);
                },
                child: Text("Confirm ")),
            ElevatedButton(
                onPressed: () {
                  showAlert(context);
                },
                child: Text("Loading")),
            ElevatedButton(
                onPressed: () {
                  showAlert(context);
                },
                child: Text("Custom")),
          ],
        ),
      ),
    );
  }
}
