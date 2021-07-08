import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unlock_seal/languages.dart';
import 'package:unlock_seal/screens/bestscores/english_widget.dart';
import 'package:unlock_seal/screens/bestscores/french_widget.dart';
import 'package:unlock_seal/screens/bestscores/german_widget.dart';
import 'package:unlock_seal/screens/data/settings.dart';

class BestscoreWidget extends StatefulWidget {
  static String routeName = "/bestscore";
  @override
  _BestscoreWidgetState createState() => _BestscoreWidgetState();
}

class _BestscoreWidgetState extends State<BestscoreWidget> {
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
