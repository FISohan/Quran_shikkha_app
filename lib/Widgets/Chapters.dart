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
  final String lessonId;
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
          duration: Duration(milliseconds: 500),
          height: f ? 0: 100,
          color: Colors.blue,
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: f ? 0 : 6,
            itemBuilder: (context, index) => Container(
              color: Colors.red,
              child: Text('data'),
            ),
          ),
        )
      ],
    );
  }
}
