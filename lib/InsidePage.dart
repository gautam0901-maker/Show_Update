import'package:flutter/material.dart';
class inside extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Check',
           style: TextStyle(
             color: Colors.pinkAccent,
             fontWeight: FontWeight.bold,
           ),
           ),
          centerTitle: true,
        ),
      ),
    );
  }
}
