/*
 * Copyright (c) 2021/  1/ 17.  Created by Hashim Tahir
 */

import 'dart:convert';

import 'package:flutter_demo/models/TimeModel.dart';
import 'package:http/http.dart';

class ApiCalls {
  static Future<TimeModel> hGetTimeFromServer() async {
    TimeModel hTimeModel;
    Response hResponse = await get('http://worldtimeapi'
        '.org/api/timezone/Asia/Karachi');

    if (hResponse.statusCode == 200) {
      hTimeModel = TimeModel.fromJson(jsonDecode(hResponse.body));
      return hTimeModel;
    } else {
      throw Exception('Failed to load Time');
    }
  }
}
