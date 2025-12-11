import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: Hello()));

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext c) =>
      Scaffold(body: Center(child: Text("Hello World")));
}
