/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/data/LocationsList.dart';
import 'package:flutter_demo/network/TimeUtils.dart';
import 'package:flutter_demo/utils/Constants.dart';
import 'package:flutter_demo/widgets/LocationCard.dart';

class ChooseLocationPage extends StatefulWidget {
  @override
  _ChooseLocationPageState createState() => _ChooseLocationPageState();
}

class _ChooseLocationPageState extends State<ChooseLocationPage> {
  var hList = LocationsList.hGetLocationsList();

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
      body: ListView.builder(
        itemCount: hList.length,
        itemBuilder: (context, index) {
          return LocationCard(
            hTimeUtils: hList[index],
            onClick: () {
              hGetNewTime(hList[index]);
            },
          );
        },
      ),
    );
  }

  void hGetNewTime(TimeUtils timeUtils) async {
    TimeUtils hTimeUtils = timeUtils;
    await hTimeUtils.hGetTimeFromServer();

    Navigator.pop(context, {
      Constants.hTime: hTimeUtils.hTime,
      Constants.hFlag: hTimeUtils.hFlag,
      Constants.hLocation: hTimeUtils.hLocation,
      Constants.hDayTime: hTimeUtils.hIsDayTime
    });
  }
}
