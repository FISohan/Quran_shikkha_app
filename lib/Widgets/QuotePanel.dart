import 'package:arabic_learning/Services/QuoteService.dart';
import 'package:flutter/material.dart';
class QuotePanel extends StatelessWidget {
  const QuotePanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 150,
      padding: const EdgeInsets.all(8),
      child: Center(
          child: Text(
        QuoteService().getQuote(),
        style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold,fontFamily: "bn"),
      )),
    );
  }
}
