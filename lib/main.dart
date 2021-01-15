/*
 * Copyright (c) 2021/  1/ 14.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
/*Scfold can act as a wrapper for bottom bar, navigation drawer
* floating action button etc.*/
  runApp(MaterialApp(home: HomeStatelessWidget()));
}

/*Statless Widget-> State of the widget canot change over time*/
/*Stateful Widget-> State of the widget can change over time
* Hot Reload -> on saving the build get called  and changes are applied.
* */
class HomeStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: Text("Flutter Demo"),
        centerTitle: true,
      ),
      /*To nest widgets use child property*/
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan[500],
            child: Text("Text 1"),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.amberAccent[500],
            child: Text("Text 2"),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.pink[500],
            child: Text("Text 3"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Sup"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
