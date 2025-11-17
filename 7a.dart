import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(labelText: "Enter Name"),
              ),
              ElevatedButton(
                onPressed: () => print("Input: ${_controller.text}"),
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}