import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:unlock_seal/screens/data/rounddata.dart';
import 'package:unlock_seal/screens/data/scores.dart';
import 'package:unlock_seal/screens/gameover/gameover_widget.dart';
import 'package:unlock_seal/screens/gameplay/button_card.dart';
import 'package:unlock_seal/screens/gameplay/buttons.dart';
import 'package:unlock_seal/screens/pause/pause_widget.dart';

class GameplayWidget extends StatefulWidget {
  static String routeName = "/gameplay";

  @override
  _GameplayWidgetState createState() => _GameplayWidgetState();
}

class _GameplayWidgetState extends State<GameplayWidget> {
  late AudioPlayer player;
  late Timer _timer;
  int _start = 30;
  late RoundData data;
  int points = 0;
  int high = 0;
  int firstRound = 5;
  List<int> numbers = [];
  List<int> userinput = [];
  List<int> answers() {
    return userinput;
  }

  final List<int> possible = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  //AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  void reset() {
    setState(() {
      points = 0;
      data = generateRound();
    });
  }

  void lightUp(int index) async {
    switch (index) {
      case 0:
        setState(() {
          buttons[index].imageurl = 'assets/images/1_yellow.svg';
          numbers.add(index);
        });

        break;

      case 1:
        setState(() {
          buttons[index].imageurl = 'assets/images/2_yellow.svg';
          numbers.add(index);
        });
        break;
      case 2:
        setState(() {
          buttons[index].imageurl = 'assets/images/3_yellow.svg';
          numbers.add(index);
        });
        break;
      case 3:
        setState(() {
          buttons[index].imageurl = 'assets/images/4_yellow.svg';
          numbers.add(index);
        });
        break;
      case 4:
        setState(() {
          buttons[index].imageurl = 'assets/images/5_yellow.svg';
          numbers.add(index);
        });
        break;
      case 5:
        setState(() {
          buttons[index].imageurl = 'assets/images/6_yellow.svg';
          numbers.add(index);
        });
        break;
      case 6:
        setState(() {
          buttons[index].imageurl = 'assets/images/7_yellow.svg';
          numbers.add(index);
        });
        break;
      case 7:
        setState(() {
          buttons[index].imageurl = 'assets/images/8_yellow.svg';
          numbers.add(index);
        });
        break;
      case 8:
        setState(() {
          buttons[index].imageurl = 'assets/images/9_yellow.svg';
          numbers.add(index);
        });
        break;
      case 9:
        setState(() {
          buttons[index].imageurl = 'assets/images/10_yellow.svg';
          numbers.add(index);
        });
        break;
      case 10:
        setState(() {
          buttons[index].imageurl = 'assets/images/11_yellow.svg';
          numbers.add(index);
        });
        break;
      case 11:
        setState(() {
          buttons[index].imageurl = 'assets/images/12_yellow.svg';
          numbers.add(index);
        });
        break;
    }
  }

  void greyUp(int index) async {
    switch (index) {
      case 0:
        setState(() {
          buttons[index].imageurl = 'assets/images/1_grey.svg';
        });

        break;

      case 1:
        setState(() {
          buttons[index].imageurl = 'assets/images/2_grey.svg';
        });
        break;
      case 2:
        setState(() {
          buttons[index].imageurl = 'assets/images/3_grey.svg';
        });
        break;
      case 3:
        setState(() {
          buttons[index].imageurl = 'assets/images/4_grey.svg';
        });
        break;
      case 4:
        setState(() {
          buttons[index].imageurl = 'assets/images/5_grey.svg';
        });
        break;
      case 5:
        setState(() {
          buttons[index].imageurl = 'assets/images/6_grey.svg';
        });
        break;
      case 6:
        setState(() {
          buttons[index].imageurl = 'assets/images/7_grey.svg';
        });
        break;
      case 7:
        setState(() {
          buttons[index].imageurl = 'assets/images/8_grey.svg';
        });
        break;
      case 8:
        setState(() {
          buttons[index].imageurl = 'assets/images/9_grey.svg';
        });
        break;
      case 9:
        setState(() {
          buttons[index].imageurl = 'assets/images/10_grey.svg';
        });
        break;
      case 10:
        setState(() {
          buttons[index].imageurl = 'assets/images/11_grey.svg';
        });
        break;
      case 11:
        setState(() {
          buttons[index].imageurl = 'assets/images/12_grey.svg';
        });
        break;
    }
  }

  void redUp(int index) async {
    switch (index) {
      case 0:
        setState(() {
          buttons[index].imageurl = 'assets/images/1_red.svg';
        });

        break;

      case 1:
        setState(() {
          buttons[index].imageurl = 'assets/images/2_red.svg';
        });
        break;
      case 2:
        setState(() {
          buttons[index].imageurl = 'assets/images/3_red.svg';
        });
        break;
      case 3:
        setState(() {
          buttons[index].imageurl = 'assets/images/4_red.svg';
        });
        break;
      case 4:
        setState(() {
          buttons[index].imageurl = 'assets/images/5_red.svg';
        });
        break;
      case 5:
        setState(() {
          buttons[index].imageurl = 'assets/images/6_red.svg';
        });
        break;
      case 6:
        setState(() {
          buttons[index].imageurl = 'assets/images/7_red.svg';
        });
        break;
      case 7:
        setState(() {
          buttons[index].imageurl = 'assets/images/8_red.svg';
        });
        break;
      case 8:
        setState(() {
          buttons[index].imageurl = 'assets/images/9_red.svg';
        });
        break;
      case 9:
        setState(() {
          buttons[index].imageurl = 'assets/images/10_red.svg';
        });
        break;
      case 10:
        setState(() {
          buttons[index].imageurl = 'assets/images/11_red.svg';
        });
        break;
      case 11:
        setState(() {
          buttons[index].imageurl = 'assets/images/12_red.svg';
        });
        break;
    }
  }

  void compareArrays(int x) {
    int userlenght = userinput.length;
    switch (userlenght) {
      case 0:
        setState(() async {
          if (x == numbers[0]) {
            userinput.add(x);
            addPoints();
            Provider.of<Scores>(context, listen: false).add();
            lightUp(x);

            await Future.delayed(const Duration(seconds: 2), () {
              greyUp(x);
            });
          } else {
            redUp(x);

            await Future.delayed(const Duration(seconds: 2), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 1:
        setState(() async {
          if (x == numbers[1]) {
            userinput.add(x);
            addPoints();
            Provider.of<Scores>(context, listen: false).add();
            lightUp(x);
            await Future.delayed(const Duration(seconds: 2), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 2), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 2:
        setState(() async {
          if (x == numbers[2]) {
            userinput.add(x);
            addPoints();
            lightUp(x);
            Provider.of<Scores>(context, listen: false).add();
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 3:
        setState(() async {
          if (x == numbers[3]) {
            userinput.add(x);
            addPoints();
            lightUp(x);
            Provider.of<Scores>(context, listen: false).add();
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 4:
        setState(() async {
          if (x == numbers[4]) {
            userinput.add(x);
            addPoints();
            lightUp(x);
            Provider.of<Scores>(context, listen: false).add();
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 5:
        setState(() async {
          if (x == numbers[5]) {
            userinput.add(x);
            addPoints();
            lightUp(x);
            Provider.of<Scores>(context, listen: false).add();
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 6:
        setState(() async {
          if (x == numbers[6]) {
            userinput.add(x);
            addPoints();
            lightUp(x);
            Provider.of<Scores>(context, listen: false).add();
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 7:
        setState(() async {
          if (x == numbers[7]) {
            userinput.add(x);
            addPoints();
            lightUp(x);
            Provider.of<Scores>(context, listen: false).add();
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 8:
        setState(() async {
          if (x == numbers[8]) {
            userinput.add(x);
            addPoints();
            lightUp(x);
            Provider.of<Scores>(context, listen: false).add();
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 9:
        setState(() async {
          if (x == numbers[9]) {
            userinput.add(x);
            addPoints();
            lightUp(x);
            Provider.of<Scores>(context, listen: false).add();
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 10:
        setState(() async {
          if (x == numbers[10]) {
            userinput.add(x);
            addPoints();
            lightUp(x);
            Provider.of<Scores>(context, listen: false).add();
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
      case 11:
        setState(() async {
          if (x == numbers[11]) {
            userinput.add(x);
            addPoints();
            lightUp(x);
            Provider.of<Scores>(context, listen: false).add();
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
            });
          } else {
            redUp(x);
            await Future.delayed(const Duration(seconds: 1), () {
              greyUp(x);
              _timer.cancel();
              setState(() {
                high = points;
                Provider.of<Scores>(context, listen: false).addScore(high);
              });
              Navigator.pushNamed(context, GameoverWidget.routeName);
            });
          }
        });
        break;
    }
  }

  void onTapped(int index) async {
    switch (index) {
      case 0:
        compareArrays(index);

        break;

      case 1:
        compareArrays(index);
        break;
      case 2:
        compareArrays(index);
        break;
      case 3:
        compareArrays(index);
        break;
      case 4:
        compareArrays(index);
        break;
      case 5:
        compareArrays(index);
        break;
      case 6:
        compareArrays(index);
        break;
      case 7:
        compareArrays(index);
        break;
      case 8:
        compareArrays(index);
        break;
      case 9:
        compareArrays(index);
        break;
      case 10:
        compareArrays(index);
        break;
      case 11:
        compareArrays(index);
        break;
    }
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            // Share
            Navigator.pushNamed(context, GameoverWidget.routeName,
                arguments: points);
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  Future<void> blink(int x) async {
    try {
      await Future.delayed(const Duration(seconds: 1), () {
        lightUp(x);
      });
    } catch (Exception) {
      print(e.toString());
    } finally {
      await Future.delayed(const Duration(seconds: 1), () {
        greyUp(x);
      });
    }
  }

  void showHints(int x) async {
    for (int i = 0; i < x; ++i) {
      await blink(data.options[i]);
    }

    startTimer();
  }

  void resetTimer() {
    if (_start == 0) {
      print('Game Over');
    } else {
      setState(() {
        _start = 30;
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    player.dispose();
    super.dispose();
  }

  buttonClick() async {
    await player.setAsset('assets/music/click.mp3');
    player.play();
  }

  backgroundmusic() async {
    await player.setAsset('assets/music/background.mp3');
    player.play();
  }

  pauseMusic() async {
    await player.pause();
  }

  pauseSound() {}
  @override
  void initState() {
    reset();
    showHints(firstRound);
    super.initState();
    player = AudioPlayer();
    //  backgroundmusic();
    checkDifficulty(points);
  }

  void endGame() {}

  RoundData generateRound() {
    var random = Random();
    // new temporary possibility array
    // we can remove possibilities from it
    // so that the same possibility doesn't come up twice
    List<int> temp = possible.map((item) => item).toList();

    // we'll store possibilities in this array
    List<int> res = <int>[];

    // add three random shapes from the temp possibles to the options
    for (int i = 0; i < firstRound; i++) {
      // get random index from the temporary array
      int randomItemIndex = random.nextInt(temp.length);

      // add the randomth item of the temp array to the results
      res.add(temp[randomItemIndex]);

      // remove possibility from the temp array so that it doesn't come up twice
      temp.removeAt(randomItemIndex);
    }

    // create new RoundData instance that we'll be able to return
    RoundData data = RoundData(
      options: res,
      //answers: answers(),
    );

    return data;
  }

  void addPoints() {
    points++;
  }

  randomGen(min, max) async {
    var random = Random();

    // the nextDouble() method returns a random number between 0 and 1
    var x = random.nextDouble() * (max - min) + min;

    // If you don't want to return an integer, just remove the floor() method
    return x.floor();
  }

  Widget buildGrid() {
    return GridView.count(
        crossAxisCount: 3, // 4x4 grid
        shrinkWrap: true,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: 10, right: 10),
        children: List.generate(buttons.length, (index) {
          return Center(
            child: GestureDetector(
              child: Container(child: ButtonCard(choice: buttons[index])),
              onTap: () {
                buttonClick();
                onTapped(index);
              },
            ),
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator GameplayWidget - FRAME
    return new WillPopScope(
      onWillPop: () async => false,
      child: Stack(
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
            /* left: 234,*/
            width: MediaQuery.of(context).size.width,
            top: 36,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    child: Container(
                      width: 101,
                      height: 41,
                      child: SvgPicture.asset(
                        'assets/images/Pause.svg',
                        // alignment: Alignment.center,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, PauseWidget.routeName);
                    }),
                Container(
                  width: 101,
                  height: 41,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 90,
                            height: 41,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xff1c4570),
                            ),
                            padding: const EdgeInsets.only(
                              left: 28,
                              right: 30,
                            ),
                            child: Consumer<Scores>(
                              builder: (context, scores, child) {
                                return Flexible(
                                  child: Text(
                                    scores.currentScore.toString(),
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Stack(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/coin.svg',
                                  width: 32,
                                  height: 32,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

//Timer and clock
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                'assets/images/Clock.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 11.62),
                      Flexible(
                        child: Text(
                          "00:$_start",
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Color(0xff1C4570),
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                buildGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void checkDifficulty(int points) {
    if (points / 3 == 0) {
      firstRound++;
    }
  }
}
