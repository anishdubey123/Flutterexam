import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (_) => Page1(),
    '/p2': (_) => Page2(),
  },
));

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text("Home")),
    body: Center(
      child: ElevatedButton(
        child: Text("Go"),
        onPressed: () => Navigator.pushNamed(c, '/p2'),
      ),
    ),
  );
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text("Second")),
    body: Center(child: Text("This is Page 2")),
  );
}
