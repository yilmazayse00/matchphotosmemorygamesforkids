import 'dart:async';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matchphotosmemorygamesforkids/data/data.dart';
import 'package:matchphotosmemorygamesforkids/screens/ResultPage.dart';

class BoardPage extends StatelessWidget {
  String passData;
  BoardPage({Key key, @required this.passData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CreateGameCard(passData: passData),
    );
  }
}

class CreateGameCard extends StatefulWidget {
  String passData;
  CreateGameCard({Key key, @required this.passData}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CreateGameCardState(passData);
  }
}

class CreateGameCardState extends State<CreateGameCard> {
  String passData;
  CreateGameCardState(this.passData);

  int _previousIndex = -1;
  bool _flip = false;
  bool _start = false;
  bool _wait = false;
  Timer _timer;
  int _time = 5;
  int _left;
  bool _isFinished;
  List<String> _data;
  List<bool> _cardFlips;
  List<GlobalKey<FlipCardState>> _cardStateKeys;

  startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (t) {
      setState(() {
        _time = _time - 1;
      });
    });
  }

  void restart() {
    startTimer();
    if (passData == 'Avengers') {
      _data = getCardAvengers();
    }else if(passData == 'Disney Princess'){
      _data = getCardDisney();
    }else if(passData == 'Frozen'){
      _data = getCardFrozen();
    }else if(passData == 'PJ Masks'){
      _data = getCardPJ();
    }

    _cardFlips = getInitialItemState(passData);
    _cardStateKeys = getCardStateKeys(passData);
    _time = 5;
    _left = (_data.length ~/ 2);

    _isFinished = false;

    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        _start = true;
        _timer.cancel();
      });
    });
  }

  @override
  void initState() {
    super.initState();

    restart();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isFinished
        ? Scaffold(
            body: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    restart();
                  });
                },
                child: ResultPage(),
              ),
            ),
          )
        : Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: _time > 0
                          ? Text(
                              '$_time',
                              style: TextStyle(
                                fontFamily: 'Yusei Regular',
                                fontSize: 30,
                              ),
                            )
                          : Text(
                              'Left:$_left',
                              style: TextStyle(
                                  fontFamily: 'Yusei Regular', fontSize: 30),
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (context, index) => _start
                            ? FlipCard(
                                key: _cardStateKeys[index],
                                onFlip: () {
                                  if (!_flip) {
                                    _flip = true;
                                    _previousIndex = index;
                                  } else {
                                    _flip = false;
                                    if (_previousIndex != index) {
                                      if (_data[_previousIndex] !=
                                          _data[index]) {
                                        _wait = true;

                                        Future.delayed(
                                            const Duration(milliseconds: 1200),
                                            () {
                                          _cardStateKeys[_previousIndex]
                                              .currentState
                                              .toggleCard();
                                          _previousIndex = index;
                                          _cardStateKeys[_previousIndex]
                                              .currentState
                                              .toggleCard();

                                          Future.delayed(
                                              const Duration(milliseconds: 160),
                                              () {
                                            setState(() {
                                              _wait = false;
                                            });
                                          });
                                        });
                                      } else {
                                        _cardFlips[_previousIndex] = false;
                                        _cardFlips[index] = false;
                                        print(_cardFlips);

                                        setState(() {
                                          _left -= 1;
                                        });
                                        if (_cardFlips
                                            .every((t) => t == false)) {
                                          Future.delayed(
                                              const Duration(milliseconds: 160),
                                              () {
                                            setState(() {
                                              _isFinished = true;
                                              _start = false;
                                            });
                                          });
                                        }
                                      }
                                    }
                                  }
                                  setState(() {});
                                },
                                flipOnTouch: _wait ? false : _cardFlips[index],
                                direction: FlipDirection.HORIZONTAL,
                                front: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 3,
                                        spreadRadius: 0.8,
                                        offset: Offset(3.0, 3),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(4.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:Image(
                                      image: AssetImage(
                                        'assets/star.png'
                                      ),
                                    ),
                                  ),
                                ),
                                back: getItem(index),
                              )
                            : getItem(index),
                        itemCount: _data.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Widget getItem(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            spreadRadius: 0.8,
            offset: Offset(3.0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      margin: EdgeInsets.all(4.0),
      child: Image.network(
        _data[index],
      ),
    );
  }
}
