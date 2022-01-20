// ignore_for_file: file_names

import 'package:arabic_learning/Services/QuoteService.dart';
import 'package:arabic_learning/Widgets/QuoteDisplay.dart';
import 'package:arabic_learning/Widgets/SlExpansionPanel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool f = true;
  double _height = 400;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("App Title"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: QuoteDisplay(quote: QuoteService().getQuote()),
            ),
            Expanded(child: const SlExpansionPanel())
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            super.setState(() {
              if (f) {
                f = false;
                _height = 0;
              } else {
                f = true;

                _height = 400;
              }
            })
          },
          child: const Text("click"),
        ),
      ),
    );
  }
}
