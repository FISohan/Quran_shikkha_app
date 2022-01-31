import 'package:arabic_learning/Data/Models/chapterModel.dart';
import 'package:flutter/material.dart';

class ChapterList extends ChangeNotifier {
  static List<Chapter> chapters = [
    Chapter("হরফ পরিচিতি", 0, true, 1),
    Chapter("মাখরাজ শিক্ষা", 1, true, 1),
    Chapter("হরকত শিক্ষা", 2, true, 1),
    Chapter("মাদ্দ শিক্ষা", 3, true, 1),
    Chapter("ওয়াকফ শিক্ষা", 4, true, 1),
    Chapter("জ্ঞাতব্য", 5, true, 1),
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
