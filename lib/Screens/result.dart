// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:dicee_app/Screens/infoscreen.dart';
import 'package:dicee_app/Screens/playscreen.dart';
import 'package:dicee_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Result extends StatelessWidget {
  int player1Score;
  int player2Score;
  String player1Name;
  String player2Name;
  Result({
    required this.player1Score,
    required this.player2Score,
    required this.player1Name,
    required this.player2Name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: red900,
                border: Border.all(
                  width: 2,
                  color: white,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 60,
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    player1Score >= player2Score
                        ? (player1Score == player2Score
                            ? "Both Players have equal score"
                            : "$player1Name Wins")
                        : "$player2Name Wins",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: white,
                      fontFamily: 'MouseMemoirs',
                      fontSize: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Score of $player1Name:  $player1Score",
                    style: TextStyle(
                      color: white,
                      fontFamily: 'MouseMemoirs',
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Score of $player2Name:  $player2Score",
                    style: TextStyle(
                      color: white,
                      fontFamily: 'MouseMemoirs',
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: success,
                      elevation: 10,
                      shadowColor: success,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        "Play Again",
                        style: TextStyle(
                          fontFamily: 'MouseMemoirs',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PlayScreen(
                            player1Name: player1Name,
                            player2Name: player2Name,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: blue,
                      elevation: 10,
                      shadowColor: blue,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        "Home",
                        style: TextStyle(
                          fontFamily: 'MouseMemoirs',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => InfoScreen(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: red900,
                      elevation: 10,
                      shadowColor: red900,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        "Exit",
                        style: TextStyle(
                          fontFamily: 'MouseMemoirs',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
