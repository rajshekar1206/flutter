import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Layout Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FittedBox Widget")),
      body: Center(
        child: FittedBox(
          child: Row(
            children: <Widget>[
              Container(child: Image.asset('assets/image.png')),
              Container(
                child: Text(
                  "\nThis is a Widget",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ],
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
