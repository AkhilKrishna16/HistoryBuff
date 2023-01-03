// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sort_child_properties_last, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() callback;
  final String answerText;

  Answer({@required this.callback, @required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(
            EdgeInsets.only(left: 35, right: 35, top: 20, bottom: 20),
          ),
        ),
        child: Text(answerText),
        onPressed: callback,
      ),
    );
  }
}
