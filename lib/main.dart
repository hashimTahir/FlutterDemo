import 'package:flutter/material.dart';

void main() {
/*Scfold can act as a holder for bottom bar, navigation drawer
* floating action button etc.*/
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
        centerTitle: true,
      ),
      /*To nest widgets use child property*/
      body: Center(
        child: Text("Any fool can write code that a computer can understand."
            " Good programmers write code that humans can understand"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Sup"),
      ),
    ),
  ));
}
