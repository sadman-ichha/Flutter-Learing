// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'eligibility_provider_screen.dart';

class EligibilityScreen extends StatelessWidget {
  const EligibilityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<EligibilityProviderScreen>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider state Management",
            style: Theme.of(context).textTheme.titleMedium),
        centerTitle: true,
        elevation: 9,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              providerData.value.toString(),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                providerData.increment();
              },
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
