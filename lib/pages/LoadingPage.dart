/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/network/TimeUtils.dart';
import 'package:flutter_demo/routes/Routes.dart';
import 'package:flutter_demo/utils/Constants.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  void hGetTime() async {
    TimeUtils hTimeUtils = TimeUtils(
        hLocation: 'paskitan', hFlag: 'pakistan.png', hUrl: 'Asia/Karachi');
    await hTimeUtils.hGetTimeFromServer();


    /*To Send data between routes.
    * When data recieved stack will be poped by push replacement
    * and arguments be sent to the given route*/
    Navigator.pushReplacementNamed(context, Routes.hHomeRoute, arguments: {
      Constants.hTime: hTimeUtils.hTime,
      Constants.hFlag: hTimeUtils.hFlag,
      Constants.hLocation: hTimeUtils.hLocation
    });

    Constants.hLogger.d('Time is ${hTimeUtils.hTime}');
  }

  @override
  void initState() {
    super.initState();
    hGetTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text('Loading...'),
      ),
    );
  }
}
