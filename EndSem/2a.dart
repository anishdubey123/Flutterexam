import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: ResponsiveDemo()));

class ResponsiveDemo extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    double w = MediaQuery.of(c).size.width;  // MediaQuery usage
    bool phone = w < 600;                    // Breakpoint / Checkpoint

    return Scaffold(
      appBar: AppBar(title: Text("Responsive")),
      body: phone
          ? Column(children:[Box("Phone"), Box("Small UI")])
          : Row(children:[Box("Tablet Left"), Box("Right UI")]),
    );
  }
}

Widget Box(String s) => Container(
  margin: EdgeInsets.all(10),
  width: 120, height: 60,
  color: Colors.blue,
  child: Center(child: Text(s, style: TextStyle(color: Colors.white))),
);
