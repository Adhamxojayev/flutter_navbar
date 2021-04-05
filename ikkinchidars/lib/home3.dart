import 'package:flutter/material.dart';

class Home_three extends StatefulWidget {
  @override
  _Home_threeState createState() => _Home_threeState();
}

class _Home_threeState extends State<Home_three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Basket",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent),
        ),
      ),
    );
  }
}
