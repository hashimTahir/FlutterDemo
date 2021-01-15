/*
 * Copyright (c) 2021/  1/ 14.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: QuotesList()));
}

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<String> hQuotesList = ["First, solve the problem. Then, write the code",
    "Experience is the name everyone gives to their mistakes."
        " In order to be irreplaceable, one must always be different"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Quotes',
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent[200],
      ),
      body: Column(
        children:
        hQuotesList.map((quote) {
          return Text(quote);
        }).toList(),

      ),
    );
  }
}
