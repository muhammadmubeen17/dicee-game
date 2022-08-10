import 'package:dicee_app/Screens/Infoscreen.dart';
import 'package:dicee_app/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Home(),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: red900,
        ),
        scaffoldBackgroundColor: red,
      ),
      debugShowCheckedModeBanner: false,
      home: InfoScreen(),
    );
  }
}
