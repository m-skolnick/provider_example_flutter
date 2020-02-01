import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dedicated_provider_for_single_page.dart';

class PageWithDedicatedProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'This color will change every second: ',
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0),
          ),
          /* 
            Here is a demonstration of `Selector`. 
            Selector can be used when only one widget needs to be rebuilt
            when a specific value in your provider changes.
            If your widget depends on multiple values, that is also possible 
            using `Selector0`, `Selector1` etc...

            If the typical `final _provider = Provider.of<ProviderForOnePage>(context)`
            were used to access our provider at the top of this page, 
            the whole widget (in this case the whole page) would be rebuilt every time the 
            color changes. Because we are using `Selector`, only this Container is rebuilt
            when specifically the `color` value changes
          */
          Selector<ProviderForOnePage, Color>(
            selector: (_, provider) => provider.color,
            builder: (_, color, __) {
              return Container(
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
