import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class EligibilityProviderScreen extends ChangeNotifier {
  bool value = false;
  String message = "You have not given any input";

  void checkEligibility(int age) {
    if (age >= 18) {
      //your are eligibility
      value = true;
      message = "Your are eligibility apply for driving License";
      notifyListeners();
    } else {
      //your are not eligibility
      value = false;
      message = "Your are not eligibility apply for driving License";
      notifyListeners();
    }
  }
}
