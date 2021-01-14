import 'package:flutter/material.dart';

void main() {
/*Scfold can act as a wrapper for bottom bar, navigation drawer
* floating action button etc.*/
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Text("Flutter Demo"),
        centerTitle: true,
      ),
      /*To nest widgets use child property*/
      body: Center(
        child: Text(
          "Any fool can write code that a computer can understand."
          " Good programmers write code that humans can understand",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
              letterSpacing: 2.0,
              fontFamily: 'IndieFlower'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Sup"),
        backgroundColor: Colors.red[600],
      ),
    ),
  ));
}
