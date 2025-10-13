import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyIconPage(),
    );
  }
}

class MyIconPage extends StatefulWidget {
  @override
  MyIconPageState createState() => MyIconPageState();
}

class MyIconPageState extends State<MyIconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Icon Tutorial')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(Icons.camera_enhance),
          Icon(Icons.camera_front),
          Icon(Icons.camera_rear),
        ],
      ),
    );
  }
}
