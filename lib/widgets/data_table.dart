import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: dataTable().studentDetails,
      ),
    );
  }
}

String schoolName = "ABC School";

class dataTable {
  var studentDetails = DataTable(columns: [
    DataColumn(label: Text("Name"), numeric: true),
    DataColumn(label: Text("Age")),
    DataColumn(label: Text("Gender")),
    DataColumn(label: Text("School")),
  ], rows: [
    DataRow(cells: [
      DataCell(Text("Sadman")),
      DataCell(Text("40")),
      DataCell(Text("Male")),
      DataCell(Text(schoolName)),
    ]),
    DataRow(cells: [
      DataCell(Text("Ichha")),
      DataCell(Text("60")),
      DataCell(Text("Male")),
      DataCell(Text(schoolName)),
    ]),
  ]);
}
