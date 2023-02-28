import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unlock_seal/languages.dart';
import 'package:unlock_seal/screens/data/settings.dart';
import 'package:unlock_seal/screens/main/english_widget.dart';
import 'package:unlock_seal/screens/main/french_widget.dart';
import 'package:unlock_seal/screens/main/german_widget.dart';

import 'package:flame_audio/flame_audio.dart';


class MainmenuWidget extends StatefulWidget {
  static String routeName = "/mainmenu";
  bool playingMusic = true;

  @override
  _MainmenuWidgetState createState() => _MainmenuWidgetState();
}


_checkLanguage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.setString('language', 'german');
}

class _MainmenuWidgetState extends State<MainmenuWidget> {

  @override
  void initState(){
    super.initState();
    FlameAudio.bgm.initialize();

    //FlameAudio.bgm.play('background.mp3');
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
