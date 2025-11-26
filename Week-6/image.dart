import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Image Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/tablet.png'),
              const SizedBox(height: 20),
              const Text(
                'A tablet is a wireless touch screen computer that is smaller '
                'than a notebook but larger than a smartphone.',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}





// add this code in side of the pubspec.yaml file at below uses-material-design: true
  uses-material-design: true

  assets:
    - assets/tablet.png
