// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:unlock_seal/routes.dart';
// import 'package:unlock_seal/screens/data/scores.dart';
// import 'package:unlock_seal/screens/data/settings.dart';
// import 'package:unlock_seal/screens/main/mainmenu_widget.dart';
// import 'package:unlock_seal/theme.dart';
//
// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => Settings()),
//         ChangeNotifierProvider(create: (context) => Scores()),
//       ],
//       child: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Guess Again',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(
//         title: 'Unlock Seal',
//       ),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Guess Again',
//       theme: theme(),
//       // home: SplashScreen(),
//       // We use routeName so that we dont need to remember the name
//       // initialRoute: SplashScreen.routeName,
//       initialRoute: MainmenuWidget.routeName,
//       routes: routes,
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Guess Again',
//       theme: theme(),
//       initialRoute: MainmenuWidget.routeName,
//       routes: routes,
//     );
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _changeLanguage();
//   }
//
//   _changeLanguage() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('language', 'german');
//   }
// }


import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:unlock_seal/numbers_game.dart';

void main() {
  final game = NumbersGame();
  runApp(GameWidget(game: game));
}