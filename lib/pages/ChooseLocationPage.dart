/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseLocationPage extends StatefulWidget {
  @override
  _ChooseLocationPageState createState() => _ChooseLocationPageState();
}

class _ChooseLocationPageState extends State<ChooseLocationPage> {


  /*Every time the data state changes in StatefulWidget
  * build method is called to recreate the widget.*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
    );

  }
}
