import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unlock_seal/languages.dart';
import 'package:unlock_seal/screens/data/settings.dart';
import 'package:unlock_seal/screens/main/english_widget.dart';
import 'package:unlock_seal/screens/main/french_widget.dart';
import 'package:unlock_seal/screens/main/german_widget.dart';

class MainmenuWidget extends StatefulWidget {
  static String routeName = "/mainmenu";

  @override
  _MainmenuWidgetState createState() => _MainmenuWidgetState();
}

class _MainmenuWidgetState extends State<MainmenuWidget> {
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
