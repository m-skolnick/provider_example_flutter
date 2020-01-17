import 'package:flutter/widgets.dart';
import 'package:flutter_help/Provider/data_provider.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _dataProvider = Provider.of<DataProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'This number will change every second: ${_dataProvider.counter}',
          ),
        ],
      ),
    );
  }
}
