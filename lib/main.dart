// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(HistoryBuff());

class HistoryBuff extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HistoryBuffState();
  }
}

class HistoryBuffState extends State<HistoryBuff> {
  // ignore: prefer_final_fields
  final _questions = const [
    {
      'question': 'When was the Declaration of Independence signed?',
      'answers': [
        {'text': '1976', 'score': 0},
        {'text': '1876', 'score': 0},
        {'text': '1776', 'score': 20},
        {'text': '1676', 'score': 0},
      ],
    },
    {
      'question': 'The United States bought Alaska from which country?',
      'answers': [
        {'text': 'Russia', 'score': 20},
        {'text': 'Hungary', 'score': 0},
        {'text': 'Canada', 'score': 0},
        {'text': 'Greenland', 'score': 0},
      ],
    },
    {
      'question': 'Who was the fourth president of the United States?',
      'answers': [
        {'text': 'Abraham Lincoln', 'score': 0},
        {'text': 'James Polk', 'score': 0},
        {'text': 'James Madison', 'score': 20},
        {'text': 'Thomas Jefferson', 'score': 0},
      ],
    },
    {
      'question':
          'Which era marked the switch from agricultural practices to industrial practices?',
      'answers': [
        {'text': 'The American Revolution', 'score': 0},
        {'text': 'The Green Revolution', 'score': 0},
        {'text': 'The Great Turn', 'score': 0},
        {'text': 'The Industrial Revolution', 'score': 20},
      ],
    },
    {
      'question':
          'Fill in the blank: The 19th amendment guarantees ____ the right to vote.',
      'answers': [
        {'text': 'Women', 'score': 20},
        {'text': 'Slaves', 'score': 0},
        {'text': 'Protestants', 'score': 0},
        {'text': 'Citizens', 'score': 0},
      ],
    },
    {
      'question': 'When was George H.W. Bush elected president?',
      'answers': [
        {'text': '1980', 'score': 0},
        {'text': '1984', 'score': 0},
        {'text': '1988', 'score': 20},
        {'text': '1992', 'score': 0},
      ],
    },
    {
      'question': 'What do the stripes on the American flag represent?',
      'answers': [
        {'text': 'The 13 colonies', 'score': 20},
        {'text': 'The 13 Wars', 'score': 0},
        {'text': 'The 13 Founding Fathers', 'score': 0},
        {'text': 'The 13 Ships', 'score': 0},
      ],
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _nextQuestion(int score) {
    setState(() {
      _questionIndex++;
    });

    _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("History Buff!"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                callback: _nextQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(result: _totalScore),
      ),
    );
  }
}
