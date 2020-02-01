import 'package:flutter/foundation.dart';

/*
  This provider is an example of using one provider to display the same data in 
  multiple pages. 
  Both Page1SharedProvider and Page1SharedProvider are dependant on this provider.
*/
class SharedProvider with ChangeNotifier {
  var counter = 0;

  SharedProvider() {
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
