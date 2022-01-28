import 'package:arabic_learning/Data/storage/chapterList.dart';
import 'package:arabic_learning/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ChapterList>(create: (_) => ChapterList())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(secondary: Colors.lightGreen)),
      home: const HomePage(),
    ),
  ));
}
