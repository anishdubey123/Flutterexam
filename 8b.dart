import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

// 1. Add Mixin
class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // 2. Initialize Controller
    _controller = AnimationController(
      duration: Duration(seconds: 2), 
      vsync: this
    )..repeat(reverse: true); // Auto loop
  }

  @override
  void dispose() {
    _controller.dispose(); // 3. Dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // 4. Use Transition Widget
          child: FadeTransition(
            opacity: _controller,
            child: Icon(Icons.favorite, size: 100, color: Colors.red),
          ),
        ),
      ),
    );
  }
}