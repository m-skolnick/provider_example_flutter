import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_help/pages/pages_sharing_provider/provider_for_shared_pages.dart';
import 'package:provider/provider.dart';

class Page1SharedProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
      Using this method of accessing provider, the entire widget will be rebuilt
      whenever notifyListeners() is called in the provider.

      Look in `page_with_dedicated_provider` to see how to use `Selector` to
      select which value needs to change in order to rebuild a widget.
    */
    final _dataProvider = Provider.of<SharedProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'This number will change every second: ${_dataProvider.counter}',
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0),
          ),
          RaisedButton(
            onPressed: () => _dataProvider.resetCounter(),
            child: Text("Reset Counter"),
          )
        ],
      ),
    );
  }
}
