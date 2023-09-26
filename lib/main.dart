import 'package:cara_ou_coroa/Game/Game.dart';
import 'package:cara_ou_coroa/Home/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        "/home": (context) => Home(),
        "/game": (context) => Game(),
      },
    ),
  );
}
