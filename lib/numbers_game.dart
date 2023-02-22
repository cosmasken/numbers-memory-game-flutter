import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter/services.dart';
import 'package:unlock_seal/components/game_over.dart';
import 'package:unlock_seal/numbers_game.dart';

enum GameState { playing, intro, gameOver }

class NumbersGame extends FlameGame
    with KeyboardEvents, TapDetector, HasCollisionDetection,SingleGameInstance {
    static const String description = '''
    A game that tests your memory.The more numbers you can remember , the more points you get.
  ''';

    late final Image spriteImage;

    late final gameOverPanel = GameOverPanel();
    late final TextComponent scoreText;

    int _score = 0;
    int _highscore = 0;
    int _lowscore = 0;
    int get score => _score;
    set score(int newScore) {
        _score = newScore;
        scoreText.text = '${scoreString(_score)} '
            ' HIgh ${scoreString(_highscore)} LOW ${scoreString(_lowscore)}';
    }

    String scoreString(int score) => score.toString().padLeft(5, '0');

    /// Used for score calculation
    double _distanceTraveled = 0;


    @override
    Color backgroundColor() => const Color(0xFFFFFFFF);


    @override
    Future<void> onLoad() async{
        //await add(NumbersGame);
    }

    }