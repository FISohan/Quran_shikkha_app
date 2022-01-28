import 'package:arabic_learning/Data/Models/chapterModel.dart';
import 'package:flutter/material.dart';

class ChapterService extends ChangeNotifier {
  static List<Chapter> chapters = [
    Chapter("হরফ পরিচিতি", "lessonId", true, 1),
    Chapter("মাখরাজ শিক্ষা", "lessonId", true, 1),
    Chapter("হরকত শিক্ষা", "lessonId", true, 1),
    Chapter("মাদ্দ শিক্ষা", "lessonId", true, 1),
    Chapter("ওয়াকফ শিক্ষা", "lessonId", true, 1),
    Chapter("chapterName5", "lessonId", true, 1),
  ];

  Chapter getChapters(int i) => chapters[i];
  int chapterCount() => chapters.length;

  void unlock(int index) {
    notifyListeners();
  }

  void updateProgress(double p, int index) {
    chapters[index].progress = p;
    notifyListeners();
  }
}
