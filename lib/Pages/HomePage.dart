import 'package:arabic_learning/Services/QuoteService.dart';
import 'package:arabic_learning/Widgets/QuoteDisplay.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
        ),
        body: Container(
          child: Column(
            children:  [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: QuoteDisplay(
          quote:  QuoteService().getQuote()
            ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
