import 'dart:collection';

import 'package:flutter/material.dart';

class Scores extends ChangeNotifier {
  int _startingScore = 0;
  List<int> _bestscores = [1, 0, 0, 0, 0];
  //late final int _currentScore;
  get currentScore => _startingScore;
  UnmodifiableListView<int> get bestscores => UnmodifiableListView(_bestscores);

  int highScore() {
    return bestscores[0];
  }

  void add() {
    //_bestscores.add(scores);
    _startingScore++;
    notifyListeners();
  }

  void removeAll() {
    _bestscores.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void addScore(int score) {
    _bestscores.add(score);
  }
}
