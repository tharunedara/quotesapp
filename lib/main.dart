import 'package:flutter/material.dart';
import 'quote.dart';
import 'quoteCard.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote("Be yourself; everyone else is already taken","Oscar Wilde"),
    Quote("So many books, so little time.","Frank Zappa"),
    Quote("Be the change that you wish to see in the world.","Mahatma Gandhi")
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
    quote:quote,
    delete: (){
      setState(() {
        quotes.remove(quote);
      });
    },
    )).toList(),
    )
    );
  }
}

