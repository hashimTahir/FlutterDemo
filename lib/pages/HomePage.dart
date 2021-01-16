/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/routes/Routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, Routes.hLocationRoute);
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location'))
        ],
      )),
    );
  }
}
