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
                child: Image.asset('assets/images/pic.png'),
              ),
              Expanded(
                child: Image.asset('assets/images/pic.png'),
              ),
            ],
          ),
            ],
          )
        ),
      ),
    );
  }
}
