/*
 * Copyright (c) 2021/  1/ 14.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/ChooseLocationPage.dart';
import 'package:flutter_demo/pages/HomePage.dart';
import 'package:flutter_demo/pages/LoadingPage.dart';

import 'file:///C:/Users/HP/Desktop/Hashim/flutter_demo/lib/routes/Routes.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: Routes.hHomeRoute,
    routes: {
      Routes.hLoadingRoute: (context) => LoadingPage(),
      Routes.hHomeRoute: (context) => HomePage(),
      Routes.hLocationRoute: (context) => ChooseLocationPage(),
    },
  ));
}
