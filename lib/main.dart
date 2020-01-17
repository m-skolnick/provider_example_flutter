import 'package:flutter/material.dart';
import 'package:flutter_help/Page/page_1.dart';
import 'package:flutter_help/Page/page_2.dart';
import 'package:flutter_help/Provider/data_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => DataProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Page 1"),
                Tab(text: "Page 2"),
              ],
            ),
            title: Text('Same Provider For Multiple Pages'),
          ),
          body: TabBarView(
            children: [
              Page1(),
              Page2(),
            ],
          ),
        ),
      ),
    );
  }
}
