import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter/services.dart';
import 'package:unlock_seal/components/game_over.dart';
import 'package:flame/timer.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:dashbook/dashbook.dart';

enum GameState { playing, intro, gameOver }

class NumbersGame extends FlameGame
    with KeyboardEvents, TapDetector, DoubleTapDetector,SingleGameInstance {
  static const String description = '''
    A game that tests your memory.The more numbers you can remember , the more points you get.
  ''';

  bool playingMusic = false;

  late final Image spriteImage;

  final double buttonsize = 200;

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
  SpriteComponent background = SpriteComponent();
  SpriteComponent numberbtn = SpriteComponent();
  TextComponent instruction = TextComponent();

  // @override
  // Color backgroundColor() => const Color(0xFFFFFFFF);

@override

  Future<void> onLoad() async{
  super.onLoad();


 // Flame.device.fullScreen();
//  Flame.device.setPortraitUpOnly();
  FlameAudio.bgm.initialize();
  final screenwidth =  size[0];
  final screenheight = size[1];

  // background
  // ..sprite = await Sprite.load('background.png')
  // ..size = Vector2(screenwidth, screenheight);
  // add(background);
  // //add(GameOverPanel());
  // //FlameAudio.bgm.play('background.mp3');
  // final countdown = Timer(2);
}



  @override
  void update(double dt) {

  }


  @override
  void onTap() {
    if (overlays.isActive('PauseMenu')) {
      overlays.remove('PauseMenu');
      resumeEngine();
    } else {
      overlays.add('PauseMenu');
      pauseEngine();
    }
  }
}
Widget _pauseMenuBuilder(BuildContext buildContext, NumbersGame game) {
  return Center(
    child: Container(
      width: 100,
      height: 100,
      color: Colors.orange,
      child: const Center(
        child: Text('Paused'),
      ),
    ),
  );
}

Widget overlayBuilder(DashbookContext ctx) {
  return GameWidget<NumbersGame>(
    game: NumbersGame()..paused = true,
    overlayBuilderMap: const {
      'PauseMenu': _pauseMenuBuilder,
    },
    initialActiveOverlays: const ['PauseMenu'],
  );
}