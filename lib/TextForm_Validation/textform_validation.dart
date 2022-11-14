// ignore_for_file: prefer_final_fields, prefer_const_constructors, unused_field, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_pratice/TextForm_Validation/next_page.dart';
import 'package:email_validator/email_validator.dart';

class TextFormValidation extends StatefulWidget {
  @override
  State<TextFormValidation> createState() => _TextFormValidationState();
}

class _TextFormValidationState extends State<TextFormValidation> {
  final _formlKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();

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
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Enter your Name?",
                  prefixIcon: Icon(Icons.person),
                  hintStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "this field can't be empty";
                  }
                },
              ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                autofillHints: [AutofillHints.email],
                decoration: InputDecoration(
                    hintText: "Enter your Email?",
                    prefixIcon: Icon(Icons.email_outlined),
                    suffixIcon: _emailController.text.isEmpty
                        ? Container(width: 0)
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                _emailController.clear();
                              });
                            },
                            icon: Icon(Icons.close),
                            color: Colors.red,
                          ),
                    hintStyle: Theme.of(context).textTheme.bodyMedium),
                validator: (email) {
                  if (email!.isEmpty) {
                    return "this field can't be empty";
                  } else if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(email)) {
                    return "Plase Valid email";
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter your Password!",
                    prefixIcon: Icon(Icons.password_outlined),
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
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Succuess")));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => NextPage(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Unsuccuess")));
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
