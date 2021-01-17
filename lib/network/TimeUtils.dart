/*
 * Copyright (c) 2021/  1/ 17.  Created by Hashim Tahir
 */

import 'dart:convert';

import 'package:flutter_demo/models/TimeModel.dart';
import 'package:flutter_demo/utils/Constants.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class TimeUtils {
  String hLocation;
  String hTime;
  String hFlag;
  String hUrl;
  bool hIsDayTime;

  TimeUtils({this.hLocation, this.hFlag, this.hUrl});

  Future<void> hGetTimeFromServer() async {
    try {
      TimeModel hTimeModel;
      Response hResponse = await get(Constants.hBaseUrl + hUrl);

      if (hResponse.statusCode == 200) {
        hTimeModel = TimeModel.fromJson(jsonDecode(hResponse.body));

        DateTime hDatetime = DateTime.parse(hTimeModel.datetime);
        String hOffsett = hTimeModel.utcOffset.substring(1, 3);

        hDatetime = hDatetime.add(Duration(hours: int.parse(hOffsett)));
        hTime = DateFormat.jm().format(hDatetime);
        hSetDayNight(hDatetime);
      } else {
        hTime = 'Something went wrong';
      }
    } catch (e) {
      Constants.hLogger.d('Exception ${e}');
      hTime = 'Could not retrieve time';
    }
  }

  void hSetDayNight(DateTime hDatetime) {
    if (hDatetime.hour > 6 && hDatetime.hour < 20) {
      hIsDayTime = true;
    } else {
      hIsDayTime = false;
    }
  }
}
