import 'package:flutter/material.dart';

void main(){
  runApp(CoffeeChange());
}
class CoffeeChange extends StatefulWidget{
  CoffeeChange({super.key});
  State<CoffeeChange> createState()=> CoffeeChangeState();
}
class CoffeeChangeState extends State<CoffeeChange>{
  var count=1; 
  void clickme(){
    setState(()
    {count+=1;}
    );
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        body:Center(child:Column(
          children: [Text('$count'),
          ElevatedButton(
            onPressed: clickme,
            child: Text("add coffee"),
            )
            ],
          
        ))
      )
    );
  }
}