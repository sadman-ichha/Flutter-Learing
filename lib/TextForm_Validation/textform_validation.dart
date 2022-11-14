import 'package:flutter/material.dart';

class TextFormValidation extends StatelessWidget {
  const TextFormValidation({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
          child: Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                hintText: "Enter your Name?",
                hintStyle: Theme.of(context).textTheme.bodyMedium,
              )),
              TextFormField(
                  decoration: InputDecoration(
                hintText: "Enter your Email?",
                hintStyle: Theme.of(context).textTheme.bodyMedium,
              )),
              TextFormField(
                  decoration: InputDecoration(
                hintText: "Enter your Password!",
                hintStyle: Theme.of(context).textTheme.bodyMedium,
              )),
              SizedBox(height: 40.0),
              SizedBox(
                  width: 300.0,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Validate Now"))),
            ],
          ),
        ),
      ),
    );
  }
}
