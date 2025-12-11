import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: LayoutDemo()));

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("Layouts")),
      body: Column(
        children: [
          Row(children: [Text("Row"), Container(width:40, height:40, color:Colors.red)]),
          Column(children: [Text("Column"), Image.network("https://picsum.photos/50")]),
          Stack(children: [
            Container(width:100,height:100,color:Colors.blue),
            Positioned(top:20,left:20, child: Text("Stack"))
          ])
        ],
      ),
    );
  }
}
