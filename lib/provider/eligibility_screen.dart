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
      body: Padding(
        padding: EdgeInsets.only(right: 30.0, left: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(),
            TextField(),
            SizedBox(height: 20.0),
            SizedBox(
              width: 300.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Check"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
