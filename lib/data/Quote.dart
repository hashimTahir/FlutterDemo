/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

class Quote {
  String hQuote;
  String hAuthor;

  /*Curly braces converts it into named parameters*/
  Quote({this.hQuote, this.hAuthor});

  static List<Quote> hGetQuotesList() {
    List<Quote> hQuotesList = new List.empty(growable: true);
    hQuotesList.add(Quote(
        hAuthor: "Martin Fowler",
        hQuote: "Any fool can write code that a computer can understand."
            " Good programmers write code that humans can understand."));
    hQuotesList.add(Quote(
        hAuthor: "Chris Heilmann",
        hQuote: "Java is to JavaScript what car is to Carpet."));
    hQuotesList.add(Quote(
        hAuthor: "Steve Maguire", hQuote: "Fix the cause, not the symptom."));
    hQuotesList.add(Quote(
        hAuthor: "Antoine de Saint-Exupery",
        hQuote: "Perfection is achieved not when there is nothing more"
            " to add, but rather when there is nothing more to take away."));
    hQuotesList.add(Quote(
        hAuthor: "Oscar Wilde",
        hQuote: "Experience is the name everyone gives to their mistakes."));
    return hQuotesList;
  }
}
