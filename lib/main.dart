import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "Sample App",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter"
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/pic.png'),
            ],
          ),

          // TextField(
          //   onChanged: (text) {
          //     print("First text field: $text");
          //   },
          //   obscureText: false,
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: 'Enter Name',
          //   ),
          // )


          // Text(
          //   "I am Android Developer!",
          //   textAlign: TextAlign.right,
          //   style: TextStyle(
          //     fontSize: 40.0,
          //     fontStyle: FontStyle.italic,
          //     color: Colors.red,
          //     fontWeight: FontWeight.bold,
          //     backgroundColor: Colors.yellow,
          //     wordSpacing: 20.0,
          //     decoration: TextDecoration.lineThrough,
          //     decorationColor: Colors.green,
          //     decorationStyle: TextDecorationStyle.dashed,
          //     fontFamily: 'Raleway',
          //   ),
          // ),
        ),
      ),
    );
  }
}