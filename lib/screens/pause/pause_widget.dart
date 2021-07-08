import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unlock_seal/languages.dart';
import 'package:unlock_seal/screens/data/settings.dart';
import 'package:unlock_seal/screens/pause/english_widget.dart';
import 'package:unlock_seal/screens/pause/french_widget.dart';
import 'package:unlock_seal/screens/pause/german_widget.dart';

class PauseWidget extends StatefulWidget {
  static String routeName = "/pause";
  @override
  _PauseWidgetState createState() => _PauseWidgetState();
}

class _PauseWidgetState extends State<PauseWidget> {
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
            return EnglishWidget();

          case Language.GERMAN:
            return GermanWidget();

          case Language.FRENCH:
            return FrenchWidget();

          default:
            return EnglishWidget();
        }
      }),
    );
  }
}
