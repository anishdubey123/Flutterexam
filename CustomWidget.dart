import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final String? Bname;
  final Icon? icon;

  MyButton({this.Bname, this.icon});

  void clickme() {
    print("Logged in ");
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: clickme,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon!,
          SizedBox(width: 8), 
          Text(Bname ?? ''),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyButton(
            Bname: "Like",
            icon: Icon(Icons.thumb_up),
          ),
        ),
      ),
    );
  }
}