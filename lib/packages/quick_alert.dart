// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class QuickAlertPackages extends StatelessWidget {
  const QuickAlertPackages({Key? key}) : super(key: key);

  Card customButtom(
      {required Widget title, required String text, required onTap}) {
    return Card(
      shape: StadiumBorder(),
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: ListTile(
          title: title,
          subtitle: Text(text),
          onTap: onTap,
          trailing: Icon(
            Icons.keyboard_arrow_right,
          )),
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
      body: ListView(
        padding: EdgeInsets.only(top: 30.0),
        children: [
          customButtom(
            title: Text("Success"),
            text: "Transaction Completed Successfully!",
            onTap: () {
              QuickAlert.show(
                  context: context,
                  type: QuickAlertType.success,
                  text: "Transaction Completed Successfully!");
            },
          ),
          SizedBox(height: 10),
          customButtom(
              title: Text("Error"),
              text: 'Sorry, something went wrong',
              onTap: () {
                QuickAlert.show(
                    context: context,
                    type: QuickAlertType.error,
                    title: 'Oops...',
                    text: 'Sorry, something went wrong');
              }),
          SizedBox(height: 10),
          customButtom(
              title: Text("Warning"),
              text: 'You just broke protocol',
              onTap: () {
                QuickAlert.show(
                    context: context,
                    type: QuickAlertType.warning,
                    text: 'You just broke protocol');
              }),
          SizedBox(height: 10),
          customButtom(
              title: Text("Info"),
              text: 'Buy two, get one free',
              onTap: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.info,
                  text: 'Buy two, get one free',
                );
              }),
          SizedBox(height: 10),
          customButtom(
              title: Text("Confirm"),
              text: 'Do you want to logout',
              onTap: () {
                QuickAlert.show(
                    context: context,
                    type: QuickAlertType.confirm,
                    confirmBtnText: "Okey",
                    cancelBtnText: "Cancel",
                    confirmBtnColor: Colors.green,
                    text: 'Sorry, something went wrong');
              }),
          SizedBox(height: 10),
          customButtom(
              title: Text("Loading"),
              text: 'Fetching your data',
              onTap: () {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.loading,
                  text: 'Fetching your data',
                );
              }),
        ],
      ),
    );
  }
}
