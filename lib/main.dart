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
          decoration: BoxDecoration(
            color: Colors.black26,
          ),
          child: _buildListView()
        ),
      ),
    );
  }
}

Widget _buildListView() => SizedBox(
  child: ListView(
    children: const <Widget>[
      Card(child: ListTile(title: Text('One-line ListTile'))),
      Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text('One-line with leading widget'),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('One-line with trailing widget'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text('One-line with both widgets'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('One-line dense ListTile'),
          dense: true,
        ),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(size: 56.0),
          title: Text('Two-line ListTile'),
          subtitle: Text('Here is a second line'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(size: 72.0),
          title: Text('Three-line ListTile'),
          subtitle: Text(
              'A sufficiently long subtitle warrants three lines.'
          ),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ),
      ),
    ],
  ),
);

Widget _buildCard() => SizedBox(
  height: 210,
  child: Card(
    child: Column(
      children: [
        ListTile(
          title: Text('1625 Main Street',
              style: TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Text('My City, CA 99984'),
          leading: Icon(
            Icons.restaurant_menu,
            color: Colors.blue[500],
          ),
        ),
        Divider(),
        ListTile(
          title: Text('(408) 555-1212',
              style: TextStyle(fontWeight: FontWeight.w500)),
          leading: Icon(
            Icons.contact_phone,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text('costa@example.com'),
          leading: Icon(
            Icons.contact_mail,
            color: Colors.blue[500],
          ),
        ),
      ],
    ),
  ),
);