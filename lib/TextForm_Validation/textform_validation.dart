// ignore_for_file: prefer_final_fields, prefer_const_constructors, unused_field, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pratice/TextForm_Validation/next_page.dart';

class TextFormValidation extends StatelessWidget {
  final _formlKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        centerTitle: true,
        title: Text("TextFormValidation",
            style: Theme.of(context).textTheme.bodyMedium),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
        child: Form(
          key: _formlKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your Name?",
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "this field can't be empty";
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your Email?",
                    hintStyle: Theme.of(context).textTheme.bodyMedium),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "this field can't be empty";
                  } else if (value.length < 3) {
                    return "enter a validate email";
                  }
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter your Password!",
                    hintStyle: Theme.of(context).textTheme.bodyMedium),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "this field can't be empty";
                  } else if (value.length < 6) {
                    return "password must be 6 characters";
                  }
                },
              ),
              SizedBox(height: 40.0),
              SizedBox(
                  width: 300.0,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formlKey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => NextPage()));
                        }
                      },
                      child: Text("Validate Now"))),
            ],
          ),
        ),
      ),
    );
  }
}
