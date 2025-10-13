import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The MaterialApp widget sets up your app with Material Design basics
      home: Scaffold(
        appBar: AppBar(title: const Text('First App')),
        body: const Center(child: Text('Hello World')),
      ),
    );
  }
}