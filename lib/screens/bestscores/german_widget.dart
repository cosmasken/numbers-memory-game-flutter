import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:unlock_seal/screens/data/scores.dart';

class GermanWidget extends StatefulWidget {
  @override
  _GermanWidgetState createState() => _GermanWidgetState();
}

class _GermanWidgetState extends State<GermanWidget> {
  _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              /*title: new Text("Material Dialog"),
          content: new Text("Hey! I'm Coflutter!"),*/
              actions: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(00, 20, 00, 00),
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/images/englishpopup.svg',
                          alignment: Alignment.center,
                        ),
                        Row(
                          children: [Text('Yes'), Text('No')],
                        )
                      ],
                    )
                    /*SvgPicture.asset(
                    'assets/images/englishpopup.svg',
                    alignment: Alignment.center,
                  ),*/
                    ),
                /*FlatButton(
              child: Text('Close me!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )*/
              ],
            ));
  }

  scorewidget(int score) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            score.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Color(0xff1C4570),
              fontSize: 17,
            ),
          ),
          SvgPicture.asset(
            'assets/images/coin.svg',
            alignment: Alignment.center,
          ),
        ],
      ),
    );
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
                      "Beste Noten",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/images/bestscoretablet.svg',
                        // alignment: Alignment.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          height: 285,
                          width: 248,
                          child: Consumer<Scores>(
                              builder: (context, scores, child) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                scorewidget(scores.currentScore),
                                scorewidget(scores.currentScore),
                                scorewidget(scores.currentScore),
                                scorewidget(scores.currentScore),
                                scorewidget(scores.currentScore),
                              ],
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(00, 20, 00, 00),
                      child: SvgPicture.asset(
                        'assets/images/deleteall.svg',
                        alignment: Alignment.center,
                      ),
                    ),
                    onTap: () {
                      _showMaterialDialog();
                    },
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
