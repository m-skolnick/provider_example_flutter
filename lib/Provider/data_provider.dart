import 'package:flutter/foundation.dart';

class DataProvider with ChangeNotifier {
  var counter = 0;

  DataProvider() {
    startCounterUpdates();
  }

  resetCounter() {
    counter = 0;
    notifyListeners();
  }

  addToCounter({int count}) {
    counter += count;
    notifyListeners();
  }

  startCounterUpdates() async {
    Stream.periodic(Duration(seconds: 1)).listen((_) {
      counter += 1;
      notifyListeners();
    });
  }
}
