import 'package:flutter/material.dart';

class ProviderForOnePage with ChangeNotifier {
  Color color;
  ProviderForOnePage() {
    startColorChanges();
  }
  startColorChanges() async {
    Stream.periodic(Duration(seconds: 1)).listen((_) {
      color = color == Colors.red ? Colors.blue : Colors.red;
      notifyListeners();
    });
  }
}
