import 'package:flutter/material.dart';

void main(){
  runApp(MyStateless());
}

class MyStateless extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home:Scaffold(
      body: Center(child:const Text("My name is khanna")),
    )
  );
}
}