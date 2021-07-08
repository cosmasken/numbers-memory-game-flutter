import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unlock_seal/screens/gameplay/gameplay_widget.dart';
import 'package:unlock_seal/screens/settings/settings_widget.dart';

class LayoutWidget extends StatefulWidget {
  static String routeName = "/layout";

  @override
  _LayoutWidgetState createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
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
            decoration: BoxDecoration(
              color: Color(0xff1C4570).withOpacity(0.5)
            ),
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
                // crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  GestureDetector(
                    child: Container(
                      child: SvgPicture.asset(
                        'assets/images/resumebtn.svg',
                        alignment: Alignment.center,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, GameplayWidget.routeName);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Container(
                      child: SvgPicture.asset(
                        'assets/images/restartbtn.svg',
                        alignment: Alignment.center,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, GameplayWidget.routeName);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Container(
                      child: SvgPicture.asset(
                        'assets/images/mainmenubtn.svg',
                        alignment: Alignment.center,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, GameplayWidget.routeName);
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
