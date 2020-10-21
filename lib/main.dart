import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int _count = 0;

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/edit.png'),
                  Image.asset('assets/images/edit.png'),
                  Image.asset('assets/images/edit.png'),
                ],
              ),
              Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset('assets/images/pic.png'),
              ),
              Expanded(
                flex : 2,
                child: Image.asset('assets/images/pic.png'),
              ),
              Expanded(
                child: Image.asset('assets/images/pic.png'),
              ),
            ],
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      stars,
                      text
                    ],
                  ),
                  Column(
                    children: [
                      stars,
                      text
                    ],
                  ),
                  Column(
                    children: [
                      stars,
                      text
                    ],
                  )
                ],
              ),
            ],
          )
        ),
      ),
    );
  }

  var descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

  var text = Text("data");

  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.black),
      Icon(Icons.star, color: Colors.black),
    ],
  );
}
