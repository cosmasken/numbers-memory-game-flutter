import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:unlock_seal/screens/data/scores.dart';

class EnglishWidget extends StatefulWidget {
  @override
  _EnglishWidgetState createState() => _EnglishWidgetState();
}

class _EnglishWidgetState extends State<EnglishWidget> {
  _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              actions: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(00, 20, 00, 00),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            SvgPicture.asset(
                              'assets/images/englishpopup.svg',
                              alignment: Alignment.center,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/Yes.svg',
                                  alignment: Alignment.center,
                                ),
                                SvgPicture.asset(
                                  'assets/images/No.svg',
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ));
  }

  scorewidget(int no, int score) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$no. $score',
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
    return Stack(children: <Widget>[
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
          decoration: BoxDecoration(color: Color(0xff1C4570).withOpacity(0.9)),
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
      Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.15,
            right: MediaQuery.of(context).size.width * 0.15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text(
                "Best Scores",
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
                    child: Consumer<Scores>(builder: (context, scores, child) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          scorewidget(1, scores.highScore()),
                          scorewidget(2, scores.highScore()),
                          scorewidget(3, scores.highScore()),
                          scorewidget(4, scores.highScore()),
                          scorewidget(5, scores.highScore()),
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
      )
    ]);
  }
}
