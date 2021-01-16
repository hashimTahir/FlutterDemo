/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

import 'package:flutter/material.dart';
import 'package:flutter_demo/data/Quote.dart';

class QuoteCard extends StatelessWidget {
  Quote quote;

  Null Function() delete;

  QuoteCard({this.quote, Null Function() this.delete});

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
              quote.hQuote,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.hAuthor,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 8.0,
            ),
            FlatButton.icon(
                onPressed: () {
                  delete();
                },
                icon: Icon(Icons.delete),
                label: Text('Delete qoute'))
          ],
        ),
      ),
    );
  }
}
