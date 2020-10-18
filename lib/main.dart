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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                //forgot password screen
              },
              textColor: Colors.blue,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Forgot Password')),
            ),
            Container(
              width: 5.0,
              height: 0,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                minWidth: double.infinity,
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Sign In'),
                onPressed: (){},
              ),),
          ],
        ),
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: Padding(
  //           padding: EdgeInsets.all(10),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.max,
  //             children: <Widget>[
  //               Container(
  //                   alignment: Alignment.center,
  //                   padding: EdgeInsets.all(10),
  //                   child: Text(
  //                     'Sign in',
  //                     style: TextStyle(fontSize: 20),
  //                   )),
  //               Container(
  //                 padding: EdgeInsets.all(10),
  //                 child: TextField(
  //                   controller: nameController,
  //                   decoration: InputDecoration(
  //                     border: OutlineInputBorder(),
  //                     labelText: 'User Name',
  //                   ),
  //                 ),
  //               ),
  //               Container(
  //                 padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
  //                 child: TextField(
  //                   obscureText: true,
  //                   controller: passwordController,
  //                   decoration: InputDecoration(
  //                     border: OutlineInputBorder(),
  //                     labelText: 'Password',
  //                   ),
  //                 ),
  //               ),
  //               FlatButton(
  //                 onPressed: () {
  //                   //forgot password screen
  //                 },
  //                 textColor: Colors.blue,
  //                 child: Align(
  //                     alignment: Alignment.centerLeft,
  //                     child: Text('Forgot Password')),
  //               ),
  //               Container(
  //                   height: 50,
  //                   padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
  //                   child: RaisedButton(
  //                     textColor: Colors.white,
  //                     color: Colors.blue,
  //                     child: Text('Login'),
  //                     onPressed: () {
  //                       print(nameController.text);
  //                       print(passwordController.text);
  //                     },
  //                   )),
  //               Align(alignment: Alignment.topLeft,
  //                   child: Row(
  //                     children: <Widget>[
  //                       Text('First Time? ',
  //                         style: TextStyle(
  //                             fontSize: 15.0),
  //                       ),
  //                       Text(
  //                         'Create Account',
  //                         style: TextStyle(
  //                             fontSize: 15.0, decoration: TextDecoration.underline),
  //                       ),
  //                     ],
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                   ))
  //             ],
  //           )));
  // }

}
