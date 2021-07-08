import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unlock_seal/languages.dart';
import 'package:unlock_seal/screens/data/settings.dart';
import 'package:unlock_seal/screens/gameover/english_widget.dart';
import 'package:unlock_seal/screens/gameover/french_widget.dart';
import 'package:unlock_seal/screens/gameover/german_widget.dart';

class GameoverArguments {
  final int points;

  GameoverArguments(this.points);
}

class GameoverWidget extends StatefulWidget {
  static String routeName = "/gameover";
  final int points;

  const GameoverWidget({Key? key, required this.points}) : super(key: key);

  @override
  _GameoverWidgetState createState() => _GameoverWidgetState();
}

class _GameoverWidgetState extends State<GameoverWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Consumer<Settings>(builder: (context, settings, child) {
        switch (settings.language) {
          case Language.ENG:
            return EnglishWidget(points: widget.points);

          case Language.GERMAN:
            return GermanWidget(points: widget.points);

          case Language.FRENCH:
            return FrenchWidget(points: widget.points);

          default:
            return EnglishWidget(points: widget.points);
        }
      }),
    );
  }
}
