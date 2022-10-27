// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  String schoolName = "ABC School";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StudentData.bodyData(),
      ),
    );
  }
}

class StudentData {
  // pass data one page to another page via Constructors
  String? name;
  int? age;
  String? gender;
  String schoolName;

  StudentData(
      {required this.name,
      required this.age,
      required this.gender,
      this.schoolName = "ABC School"});

  //Constructors end..    

  static Widget bodyData() {
    List<StudentData> names = [
      StudentData(name: "Sadman", age: 30, gender: "Male"),
      StudentData(name: "Rahul", age: 20, gender: "Male"),
      StudentData(name: "Zerin", age: 25, gender: "Female"),
    ];
    return DataTable(
        columns: [
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Age")),
          DataColumn(label: Text("Gender")),
          DataColumn(label: Text("School")),
        ],
        rows: names
            .map(
              (student) => DataRow(cells: [
                DataCell(Text(student.name.toString())),
                DataCell(Text(student.age.toString())),
                DataCell(Text(student.gender.toString())),
                DataCell(Text(student.schoolName.toString())),
              ]),
            )
            .toList());
  }
}
