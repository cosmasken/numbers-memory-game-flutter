import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unlock_seal/screens/bestscores/bestscore_widget.dart';
import 'package:unlock_seal/screens/gameplay/gameplay_widget.dart';
import 'package:unlock_seal/screens/settings/settings_widget.dart';

class EnglishWidget extends StatefulWidget {
  @override
  _EnglishWidgetState createState() => _EnglishWidgetState();
}

class _EnglishWidgetState extends State<EnglishWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: SvgPicture.asset(
            'assets/images/Background.svg',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration:
                BoxDecoration(color: Color(0xff1C4570).withOpacity(0.9)),
          ),
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            //color: Color(0xff6398D1),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text(
                      "UNLOCK SEAL",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: "Rowdies",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: SvgPicture.asset(
                        'assets/images/playbtn.svg',
                        alignment: Alignment.center,
                      ),
                    ),
                    onTap: () {
                      //buttonClickSound();
                      Navigator.pushNamed(context, GameplayWidget.routeName);
                    },
                  ),
                  /*  SizedBox(
                    height: 10,
                  ),*/
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: SvgPicture.asset(
                        'assets/images/settingsbtn.svg',
                        alignment: Alignment.center,
                      ),
                    ),
                    onTap: () {
                      //  buttonClickSound();
                      Navigator.pushNamed(context, SettingsWidget.routeName);
                    },
                  ),
                  /*  SizedBox(
                    height: 10,
                  ),*/
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: SvgPicture.asset(
                        'assets/images/bestscores.svg',
                        alignment: Alignment.center,
                      ),
                    ),
                    onTap: () {
                      //buttonClickSound();
                      Navigator.pushNamed(context, BestscoreWidget.routeName);
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
