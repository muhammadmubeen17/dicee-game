// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:dicee_app/Screens/playscreen.dart';
import 'package:dicee_app/constants.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({Key? key}) : super(key: key);

  final firstPlayerName = TextEditingController();
  final secondPlayerName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Player 1",
                        style: TextStyle(
                          fontFamily: 'MouseMemoirs',
                          fontSize: 50,
                          color: white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        autofocus: false,
                        controller: firstPlayerName,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                          fontFamily: 'MouseMemoirs',
                          fontSize: 24,
                          color: white,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15,
                          ),
                          prefix: Icon(
                            Icons.person,
                            color: white,
                          ),
                          hintText: "Ente Player 1 Name",
                          hintStyle: TextStyle(
                            color: white,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: white,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: white,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Player 2",
                        style: TextStyle(
                          fontFamily: 'MouseMemoirs',
                          fontSize: 50,
                          color: white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        autofocus: false,
                        controller: secondPlayerName,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                          fontFamily: 'MouseMemoirs',
                          fontSize: 24,
                          color: white,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15,
                          ),
                          prefix: Icon(
                            Icons.person,
                            color: white,
                          ),
                          hintText: "Ente Player 1 Name",
                          hintStyle: TextStyle(
                            color: white,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: white,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: white,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                                horizontal: 35,
                                vertical: 10,
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                  fontFamily: 'MouseMemoirs',
                                  fontSize: 40,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PlayScreen(
                                    player1Name: firstPlayerName.text,
                                    player2Name: secondPlayerName.text,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
