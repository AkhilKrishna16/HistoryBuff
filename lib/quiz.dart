import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function callback;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.callback,
      @required this.questionIndex,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['question'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
              callback: () => callback(answer['score']),
              answerText: answer['text'] as String,
            );
          },
        ).toList(),
      ],
    );
  }
}
