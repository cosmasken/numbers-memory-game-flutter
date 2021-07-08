import 'package:flutter/material.dart';
import 'package:unlock_seal/languages.dart';

class Settings extends ChangeNotifier {
  Language _language = Language.ENG;
  bool soundOn = true;
  bool musicOn = true;
  get language => _language;
  void changeLanguage(Language language) {
    _language = language;
    notifyListeners();
  }
}
