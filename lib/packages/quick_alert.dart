// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class QuickAlertPackages extends StatelessWidget {
  const QuickAlertPackages({Key? key}) : super(key: key);

  showAlert(BuildContext context, QuickAlertType alertType, String text) {
    QuickAlert.show(
      context: context,
      type: alertType,
      text: text,
    );
  }

  Card customButtom(
      {required onTap, required String title, required String text}) {
    return Card(
      shape: StadiumBorder(),
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      elevation: 5,
      child: ListTile(
        onTap: onTap,
        title: Text(title),
        subtitle: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Quick Alert", style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
        elevation: 9,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customButtom(
                onTap: () {},
                title: "Success",
                text: "Transaction Completed Successfully!"),
            SizedBox(height: 10),
            customButtom(
                onTap: () {},
                title: "Error",
                text: "Sorry, something went wrong"),
          ],
        ),
      ),
    );
  }
}
