// ignore_for_file: file_names

import 'package:flutter/material.dart';

class QuoteDisplay extends StatelessWidget {
  const QuoteDisplay({Key? key, required this.quote}) : super(key: key);
  final String quote;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(10, 5))
          ]),
      child: Center(
        child: Text(quote),
      ),
    );
    }
}
