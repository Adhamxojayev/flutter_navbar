import 'dart:ui';

import 'package:flutter/material.dart';

class Home_tu extends StatefulWidget {
  @override
  _Home_tuState createState() => _Home_tuState();
}

class _Home_tuState extends State<Home_tu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          "Search",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.normal,
              color: Colors.tealAccent),
        ),
      ),
    );
  }
}
