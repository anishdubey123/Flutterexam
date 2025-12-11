import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(home: Weather()));

class Weather extends StatefulWidget { 
  @override 
  _W createState() => _W(); 
}

class _W extends State<Weather> {
  final t = TextEditingController();
  String temp = "";

  fetchWeather() async {
    final url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=${t.text}&appid=69fb4b02358c349120c314202ebb13ac&units=metric"
    );
    final r = await http.get(url);
    final d = jsonDecode(r.body);
    setState(() => temp = "${d['main']['temp']} °C");
  }

  @override
  Widget build(BuildContext c) => Scaffold(
    appBar: AppBar(title: Text("Weather")),
    body: Column(children: [
      TextField(controller: t),
      ElevatedButton(onPressed: fetchWeather, child: Text("Get Temp")),
      Text(temp),
    ]),
  );
}
