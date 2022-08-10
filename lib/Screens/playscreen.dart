// ignore_for_file: non_constant_identifier_names, must_be_immutable, use_key_in_widget_constructors

import 'package:dicee_app/Screens/result.dart';
import 'package:dicee_app/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class PlayScreen extends StatefulWidget {
  String player1Name;
  String player2Name;
  PlayScreen({required this.player1Name, required this.player2Name});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  String PlayerOneName = '';
  String PlayerTwoName = '';
  int Player1DiceNumber = 1;
  int Player2DiceNumber = 1;
  int Player1Score = 0;
  int Player2Score = 0;
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    PlayerOneName = widget.player1Name == '' ? 'Player 1' : widget.player1Name;
    PlayerTwoName = widget.player2Name == '' ? 'Player 2' : widget.player2Name;
  }

  void DiceFaceChange() {
    Player1DiceNumber = Random().nextInt(6) + 1;
    Player2DiceNumber = Random().nextInt(6) + 1;

    Player1Score = Player1Score + Player1DiceNumber;
    Player2Score = Player2Score + Player2DiceNumber;

    count = count + 1;
    if (count == 10) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Result(
            player1Score: Player1Score,
            player2Score: Player2Score,
            player1Name: PlayerOneName,
            player2Name: PlayerTwoName,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "No of Rounds: $count/10",
          style: TextStyle(
            color: white,
            fontFamily: 'MouseMemoirs',
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      PlayerOneName,
                      style: TextStyle(
                        color: white,
                        fontFamily: 'MouseMemoirs',
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            DiceFaceChange();
                          });
                        },
                        child: Image.asset("images/dice$Player1DiceNumber.png"),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Score: $Player1Score",
                      style: TextStyle(
                        color: white,
                        fontFamily: 'MouseMemoirs',
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
            child: Divider(
              thickness: 5,
              color: white,
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  Text(
                    PlayerTwoName,
                    style: TextStyle(
                      color: white,
                      fontFamily: 'MouseMemoirs',
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          DiceFaceChange();
                        });
                      },
                      child: Image.asset("images/dice$Player2DiceNumber.png"),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Score: $Player2Score",
                    style: TextStyle(
                      color: white,
                      fontFamily: 'MouseMemoirs',
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
