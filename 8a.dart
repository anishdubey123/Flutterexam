import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  double size = 100;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () => setState(() => size = size == 100 ? 200 : 100),
            child: AnimatedContainer( // The magic widget
              duration: Duration(seconds: 1),
              width: size,
              height: size,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}