import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher extends StatelessWidget {
  final Uri googleUrl = Uri.parse('https://www.google.com/');
  final Uri telephoneNum = Uri.parse("tel:0174762134");
  final Uri sms = Uri.parse("sms:0174762134?body=hi,this is UrlLauncher");
  final Uri mail = Uri.parse("mailto:sadmanichha@gmail.com");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.0, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    launchUrl(googleUrl);
                  },
                  child: Text("goto Google")),
              TextButton(
                  onPressed: () {
                    launchUrl(telephoneNum);
                  },
                  child: Text("Telephone Number")),
              TextButton(
                  onPressed: () {
                    launchUrl(sms);
                  },
                  child: Text("Sms Number")),
              TextButton(
                  onPressed: () {
                    launchUrl(mail);
                  },
                  child: Text("Sent Mail")),
            ],
          ),
        ),
      ),
    );
  }
}
