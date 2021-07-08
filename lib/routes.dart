import 'package:flutter/widgets.dart';
import 'package:unlock_seal/layout_widget.dart';
import 'package:unlock_seal/popup_widget.dart';
import 'package:unlock_seal/screens/bestscores/bestscore_widget.dart';
import 'package:unlock_seal/screens/gameover/gameover_widget.dart';
import 'package:unlock_seal/screens/gameplay/gameplay_widget.dart';
import 'package:unlock_seal/screens/main/mainmenu_widget.dart';
import 'package:unlock_seal/screens/pause/pause_widget.dart';
import 'package:unlock_seal/screens/settings/settings_widget.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  BestscoreWidget.routeName: (context) => BestscoreWidget(),
  LayoutWidget.routeName: (context) => LayoutWidget(),
  GameoverWidget.routeName: (context) => GameoverWidget(
        points: 0,
      ),
  GameplayWidget.routeName: (context) => GameplayWidget(),
  MainmenuWidget.routeName: (context) => MainmenuWidget(),
  PauseWidget.routeName: (context) => PauseWidget(),
  PopupWidget.routeName: (context) => PopupWidget(),
  SettingsWidget.routeName: (context) => SettingsWidget(),
};
