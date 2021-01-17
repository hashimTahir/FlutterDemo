/*
 * Copyright (c) 2021/  1/ 14.  Created by Hashim Tahir
 */

import 'package:fimber/fimber_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/ChooseLocationPage.dart';
import 'package:flutter_demo/pages/HomePage.dart';
import 'package:flutter_demo/pages/LoadingPage.dart';

import 'file:///C:/Users/HP/Desktop/Hashim/flutter_demo/lib/routes/Routes.dart';

void main() {
  Fimber.plantTree(DebugTree());

  runApp(MaterialApp(
    initialRoute: Routes.hLoadingRoute,
    routes: {
      Routes.hLoadingRoute: (context) => LoadingPage(),
      Routes.hHomeRoute: (context) => HomePage(),
      Routes.hLocationRoute: (context) => ChooseLocationPage(),
    },
  ));
}
