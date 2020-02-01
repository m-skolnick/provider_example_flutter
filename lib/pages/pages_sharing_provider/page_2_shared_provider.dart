import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_help/pages/pages_sharing_provider/provider_for_shared_pages.dart';
import 'package:provider/provider.dart';

class Page2SharedProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
      Using this method of accessing provider (with the flag: listen: false), 
      we can access methods in the provider without rebuilding the widget when 
      the provider's `notifyListeners()` is called.

      Because we have `listen: false`, the widget is not listening
      to the `notifyListeners()` from our provider. 
      Therefore we need to either have a Consumer or Selector
      on our widget which needs to listen for changes.

      This page will demonstrate `Consumer`.
      Look in `page_with_dedicated_provider` to see how to use `Selector`.
    */
    final _dataProvider = Provider.of<SharedProvider>(context, listen: false);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("This is the same number as on Page 1: "),
          Padding(
            padding: EdgeInsets.only(top: 12.0),
          ),
          Consumer<SharedProvider>(
            builder: (_, provider, __) => Text('${provider.counter}'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0),
          ),
          RaisedButton(
            onPressed: () => _dataProvider.addToCounter(count: 5),
            child: Text("Add 5 to Counter"),
          )
        ],
      ),
    );
  }
}
