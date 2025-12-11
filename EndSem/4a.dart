import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: MyStateless()));

class MyStateless extends StatelessWidget {
  @override
  Widget build(BuildContext c) =>
      Scaffold(body: Center(child: Text("Stateless Widget")));
}
