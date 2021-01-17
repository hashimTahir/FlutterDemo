/*
 * Copyright (c) 2021/  1/ 17.  Created by Hashim Tahir
 */

import 'package:flutter_demo/network/TimeUtils.dart';

class LocationsList {
  static List<TimeUtils> hGetLocationsList()
  {
    List<TimeUtils> locations = [
      TimeUtils(
          hUrl: 'Indian/Christmas',
          hLocation: 'India',
          hFlag: 'https://www'
              '.worldometers.info/img/flags/in-flag.gif'),
      TimeUtils(
          hUrl: 'Asia/Karachi',
          hLocation: 'Pakistan',
          hFlag: 'https://www'
              '.worldometers.info/img/flags/pk-flag.gif'),
      TimeUtils(
          hUrl: 'Europe/London',
          hLocation: 'United Kingdom',
          hFlag: 'https://www'
              '.worldometers.info/img/flags/uk-flag.gif'),
      TimeUtils(
          hUrl: 'America/New_York',
          hLocation: 'United States',
          hFlag: 'https://www'
              '.worldometers.info/img/flags/us-flag.gif'),
      TimeUtils(
          hUrl: 'Europe/Berlin',
          hLocation: 'Germany',
          hFlag: 'https://www'
              '.worldometers.info/img/flags/gm-flag.gif'),
      TimeUtils(
          hUrl: 'Europe/Paris',
          hLocation: 'France',
          hFlag: 'https://'
              'www.worldometers.info/img/flags/fr-flag.gif'),
      TimeUtils(
          hUrl: 'Asia/Tokyo',
          hLocation: 'Japan',
          hFlag: 'https://www'
              '.worldometers.info/img/flags/ja-flag.gif'),
      TimeUtils(
          hUrl: 'Europe/Helsinki',
          hLocation: 'Finland',
          hFlag: 'https://www'
              '.worldometers.info/img/flags/fi-flag.gif'),
    ];
    return locations;
  }
}
