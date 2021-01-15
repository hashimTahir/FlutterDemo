/*
 * Copyright (c) 2021/  1/ 14.  Created by Hashim Tahir
 */

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
      body: Row(
        /*mainAxis alignment ie. along x-axis
        * cross axis alignment ie. along y-axis*/

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Text 1"),
          FlatButton(
            onPressed: () {},
            color: Colors.amber[500],
            child: Text("Button"),
          ),
          Container(
            color: Colors.cyan[600],
            padding: EdgeInsets.all(20),
            child: Text("Inner Containter"),
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
