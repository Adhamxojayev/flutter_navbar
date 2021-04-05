import 'package:flutter/material.dart';

class Home_one extends StatefulWidget {
  @override
  _Home_oneState createState() => _Home_oneState();
}

class _Home_oneState extends State<Home_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
          title: Text("Assalomu alaykum"),
          backgroundColor: Colors.indigo,
          centerTitle: true),
      body: Center(
        child: Text(
          "Home",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
