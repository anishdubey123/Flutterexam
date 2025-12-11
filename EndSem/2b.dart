import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.orange,
    textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 22)),
  ),
  home: ThemeDemo(),
));

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text("Theme Demo")),
    body: Center(child: Text("Custom Theme Applied")),
  );
}
