import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FrenchWidget extends StatefulWidget {
  @override
  _FrenchWidgetState createState() => _FrenchWidgetState();
}

class _FrenchWidgetState extends State<FrenchWidget> {
  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('Popup example'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hello"),
        ],
      ),
      actions: <Widget>[
        new ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          // textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }

  Widget chooseCountry() {
    return PopupMenuButton(
        elevation: 20,
        enabled: true,
        onSelected: (value) {
          setState(() {});
        },
        itemBuilder: (context) => [
              PopupMenuItem(
                child: SvgPicture.asset(
                  'assets/images/english.svg',
                  alignment: Alignment.center,
                  height: 31,
                ),
                value: 1,
              ),
              PopupMenuItem(
                child: SvgPicture.asset(
                  'assets/images/france.svg',
                  alignment: Alignment.center,
                  height: 31,
                ),
                value: 2,
              ),
              PopupMenuItem(
                child: SvgPicture.asset(
                  'assets/images/germany.svg',
                  alignment: Alignment.center,
                  height: 31,
                ),
                value: 3,
              )
            ]);
  }

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
        Positioned(
          top: 36,
          child: GestureDetector(
            child: Container(
              width: 101,
              height: 41,
              child: SvgPicture.asset(
                'assets/images/back.svg',
                // alignment: Alignment.center,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
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
                      "Parametres",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Son",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 27),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: SvgPicture.asset(
                            'assets/images/soundon.svg',
                            alignment: Alignment.center,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  /*  SizedBox(
                    height: 10,
                  ),*/
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Musique",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 27),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: SvgPicture.asset(
                            'assets/images/musicon.svg',
                            alignment: Alignment.center,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  /*  SizedBox(
                    height: 10,
                  ),*/
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Langue",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 27),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: SvgPicture.asset(
                            'assets/images/france.svg',
                            alignment: Alignment.center,
                            height: 31,
                          ),
                        ),
                        onTap: () {
                          _buildPopupDialog(context);
                        },
                      ),
                    ],
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
