// ignore_for_file: file_names

import 'package:arabic_learning/Services/QuoteService.dart';
import 'package:arabic_learning/Widgets/QuotePanel.dart';
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
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.all(0),
                  title: Container(
                    color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: CircularProgressIndicator(
                                  value: 0.5,
                                ),
                              ),
                              Text("50%",style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                        QuotePanel()
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
