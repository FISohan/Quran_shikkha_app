import 'package:arabic_learning/Data/storage/chapterList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Chapters extends StatefulWidget {
  const Chapters(
      {Key? key,
      required this.chapterName,
      required this.lessonId,
      required this.progress,
      required this.index})
      : super(key: key);
  final String chapterName;
  final int lessonId;
  final double progress;
  final int index;
  @override
  _ChaptersState createState() => _ChaptersState();
}

/*


 InkWell(
          onTap: () {
            Provider.of<Toggle>(context, listen: false).toggle();
            print("hello---------$s");
          },
          child: Container(
              margin: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.grey,
                          strokeWidth: 3,
                          value: widget.progress,
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 68,
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Center(
                          child: Text("${widget.progress * 100}%",
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      ChapterList().getChapters(widget.index).chapterName,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )),
        ),


*/

class _ChaptersState extends State<Chapters> {
      final List<List<String>> _l = [
    ['a', 'b', 'c', 'd', 'e', 'c', 'd', 'e'],
    ['c', 'd', 'e'],
    ['f', 'w', 't', 't'],
    ['f', 'w', 't', 't'],
    ['f', 'w', 't', 't'],
    ['f', 'w', 't', 't']
  ];
  
  bool f = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: InkWell(
            onTap: () {
              setState(() {
                f = !f;
              });
            },
            child: Container(
              margin: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.grey,
                          strokeWidth: 3,
                          value: widget.progress,
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 68,
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Center(
                          child: Text("${widget.progress * 100}%",
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      widget.chapterName,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: f ? _l[widget.index].length * (110) : 0,
            margin: const EdgeInsets.only(left: 25, right: 15),
            color: Colors.blue,
            child: Column(
              children: !f
                  ? []
                  : _lessons(widget.index),
            ))
      ],
    );
  }

  List<Widget> _lessons(int id) {

    List<Widget> _widgetList = [];

    _l[id].forEach((element) {
      _widgetList.add(Container(
        height: 100,
        margin: const EdgeInsets.only(bottom: 10),
        color: Colors.red,
        child: Center(
          child: Text(element.toString()),
        ),
      ));
    });

    return _widgetList;
  }
}
