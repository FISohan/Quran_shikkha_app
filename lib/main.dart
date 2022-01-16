import 'package:arabic_learning/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     MaterialApp(
      theme: ThemeData(
        colorScheme:ColorScheme.fromSwatch(
          primarySwatch: Colors.green
        ).copyWith(
          secondary: Colors.lightGreen
        )
      ),
      home: const HomePage(),
    )
  );
}
