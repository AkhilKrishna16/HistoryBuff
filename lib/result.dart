// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;

  Result({this.result});

  String get resultText {
    if (result > 120) {
      return "You are a true history buff!";
    } else if (result > 100) {
      return "You're not a buff but you are really good!";
    } else if (result > 80) {
      return "You are not a buff yet but you can make it!";
    } else if (result > 60) {
      return "Maybe you aren't the greatest at history but PRACTICE!";
    } else if (result > 40) {
      return "History or not history! It is really up to you to study more!";
    } else if (result > 0) {
      return "Maybe history is not your thing...";
    }

    return "How do you even get this low of a score!";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          child: Text(
            resultText,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.all(16),
          child: Text(
            'Final Score: $result',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              fontSize: 35,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
