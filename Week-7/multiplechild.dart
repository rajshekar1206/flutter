import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple Layout Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: Text('peter', textAlign: TextAlign.center)),
            Expanded(child: Text('Jhon', textAlign: TextAlign.center)),
            Expanded(
              child: FittedBox(fit: BoxFit.contain, child: const FlutterLogo()),
            ),
          ],
        ),
      ),
    );
  }
}
