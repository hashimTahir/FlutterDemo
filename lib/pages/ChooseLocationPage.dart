/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/Constants.dart';

class ChooseLocationPage extends StatefulWidget {
  @override
  _ChooseLocationPageState createState() => _ChooseLocationPageState();
}

class _ChooseLocationPageState extends State<ChooseLocationPage> {
  int hCounter = 0;

  /*Part of the life cycle called only on the start up*/
  @override
  void initState() {
    super.initState();
    Constants.hLogger.d('init method executed');
  }

  /*Every time the data state changes in StatefulWidget
  * build method is called to recreate the widget.*/
  @override
  Widget build(BuildContext context) {
    Constants.hLogger.d('build method executed');
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            hCounter++;
          });
        },child: Text('counter is $hCounter'),
      ),
    );
    ;
  }
}
