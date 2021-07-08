import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unlock_seal/languages.dart';
import 'package:unlock_seal/screens/data/settings.dart';
import 'package:unlock_seal/screens/settings/english_widget.dart';
import 'package:unlock_seal/screens/settings/french_widget.dart';
import 'package:unlock_seal/screens/settings/german_widget.dart';

class SettingsWidget extends StatefulWidget {
  static String routeName = "/settings";

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
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
