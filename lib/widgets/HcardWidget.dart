/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

import 'package:flutter/material.dart';
import 'package:flutter_demo/data/Quote.dart';

class HcardWidget extends Card {
  Quote hQuote;

  HcardWidget(this.hQuote);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              hQuote.hQuote,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              hQuote.hAuthor,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }
}
