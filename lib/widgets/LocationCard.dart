/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

import 'package:flutter/material.dart';
import 'package:flutter_demo/network/TimeUtils.dart';

class LocationCard extends StatelessWidget {
  TimeUtils hTimeUtils;

  Null Function() onClick;

  LocationCard({this.hTimeUtils, Null Function() this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            onTap: onClick,
            title: Text(hTimeUtils.hLocation),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                hTimeUtils.hFlag
              ),
            ),
          ),
        ));
  }
}
