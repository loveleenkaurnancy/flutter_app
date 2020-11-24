import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                actions: <Widget>[
                  Icon(Icons.person, size: 40,)
                ],
                title: Text("SliverList Example"),
                leading: Icon(Icons.menu),
                backgroundColor: Colors.green,
                expandedHeight: 100.0,
                floating: true,
                pinned: true
            ),
            SliverList(
              delegate: new SliverChildListDelegate(_buildList(20)),
            ),// Place sliver widgets here
          ],
        ),
      ),
    );
  }
}
List _buildList(int count) {
  List<Widget> listItems = List();
  for (int i = 0; i < count; i++) {
    listItems.add(new Padding(padding: new EdgeInsets.all(16.0),
        child: new Text(
            'Sliver Item ${i.toString()}',
            style: new TextStyle(fontSize: 22.0)
        )
    ));
  }
  return listItems;
}