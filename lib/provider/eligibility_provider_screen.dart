import 'package:flutter/widgets.dart';

class EligibilityProviderScreen extends ChangeNotifier {
  int value = 0;
  increment() {
    value++;
    notifyListeners();
  }
}
