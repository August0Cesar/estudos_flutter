import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function(int) onAnswersQuiz;
  final int questionSelected;

  Quiz({
    @required this.questions,
    @required this.onAnswersQuiz,
    @required this.questionSelected,
  });

  bool get hasSelectedQuestion {
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers =
        hasSelectedQuestion ? questions[questionSelected]['resposta'] : null;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Question(questions[questionSelected]['texto']),
        ...answers
            .map((ans) =>
                Answer(ans['texto'], () => onAnswersQuiz(ans['pontos'])))
            .toList(),
      ],
    );
  }
}
