/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/models/TimeModel.dart';
import 'package:flutter_demo/network/ApiCalls.dart';
import 'package:flutter_demo/utils/Constants.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  TimeModel hTimeModel;

  void hGetTimeData() async {
    hTimeModel = await ApiCalls.hGetTimeFromServer();
    Constants.hLogger.d("Time ${hTimeModel.datetime}");
    Constants.hLogger.d("OffSet ${hTimeModel.utcOffset}");

    DateTime hDatetime = DateTime.parse(hTimeModel.datetime);
    String hOffsett = hTimeModel.utcOffset.substring(1, 3);

    hDatetime.add(Duration(hours: int.parse(hOffsett)));
    Constants.hLogger.d(hDatetime.toString());
  }

  @override
  void initState() {
    super.initState();

    hGetTimeData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Page'),
    );
  }
}
