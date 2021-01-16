/*
 * Copyright (c) 2021/  1/ 14.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/QuoteCard.dart';

import 'data/Quote.dart';

void main() {
  runApp(MaterialApp(home: QuotesList()));
}

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> hQuotesList = Quote.hGetQuotesList();

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
      body: SingleChildScrollView(
        child: Column(
          children: hQuotesList
              .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        hQuotesList.remove(quote);
                      });
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
