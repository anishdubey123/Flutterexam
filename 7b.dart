import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. Key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form( // 2. Wrap in Form
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Enter Number"),
                validator: (value) { // 3. Validator logic
                  if (value == null || value.isEmpty) return 'Enter text';
                  if (int.tryParse(value) == null) {
                        return 'Enter Number only';
                    }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // 4. Check validation
                  if (_formKey.currentState!.validate()) {
                    print("Valid!");
                  }
                },
                child: Text("Validate"),
              )
            ],
          ),
        ),
      ),
    );
  }
}