// ignore_for_file: file_names

import 'package:arabic_learning/Data/Models/chapterModel.dart';
import 'package:arabic_learning/Data/storage/chapterList.dart';
import 'package:arabic_learning/Widgets/Chapters.dart';
import 'package:arabic_learning/Widgets/QuotePanel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        backgroundColor: Colors.black12,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                expandedHeight: 180.0,
                flexibleSpace: FlexibleSpaceBar(
                  // background: const Image(
                  //   fit: BoxFit.cover,
                  //   image: const NetworkImage(
                  //       "https://images.unsplash.com/photo-1542816417-0983c9c9ad53?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                  // ),
                  titlePadding: const EdgeInsets.all(0),
                  title: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Stack(
                            alignment: Alignment.center,
                            children: const [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: CircularProgressIndicator(
                                  value: 0.5,
                                ),
                              ),
                              Text(
                                "50%",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        const QuotePanel()
                      ],
                    ),
                  ),
                )),
            Consumer<ChapterService>(
              builder:(context,_c,child)=> SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    Chapter _chapter = _c.getChapters(index);
                    return Chapters(
                      chapterName: _chapter.chapterName,
                      lessonId: _chapter.lessonId,
                      progress: _chapter.progress,
                      index: index,
                    );
                  },
                  childCount: _c.chapterCount(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
