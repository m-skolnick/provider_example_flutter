import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_help/page2/page_dedicated_provider2/page_with_dedicated_provider.dart';
import 'package:flutter_help/page2/pages_sharing_provider2/page_1_shared_provider.dart';
import 'package:flutter_help/page2/pages_sharing_provider2/page_2_shared_provider.dart';
import 'package:flutter_help/page2/pages_sharing_provider2/provider_for_shared_pages.dart';
import 'package:provider/provider.dart';

import 'page2/page_dedicated_provider2/dedicated_provider_for_single_page.dart';

void main() {
  /*
      Here is an example of `MultiProvider`. This is the cleanest way to 
      create multiple providers at the app level.
    */
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => SharedProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => ProviderForOnePage(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Page 1"),
              Tab(text: "Page 2"),
              Tab(text: "Dedicated Provider"),
            ],
          ),
          title: Text('How to use Provider'),
        ),
        body: TabBarView(
          children: [
            Page1SharedProvider(),
            Page2SharedProvider(),
            PageWithDedicatedProvider(),
          ],
        ),
      ),
    );
  }
}
