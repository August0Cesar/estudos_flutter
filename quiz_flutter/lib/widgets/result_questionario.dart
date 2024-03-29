import 'package:flutter/material.dart';

class ResultQuestionario extends StatelessWidget {
  final pontuacao;
  final Function() onRestartQuiz;

  ResultQuestionario({@required this.pontuacao, @required this.onRestartQuiz});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: onRestartQuiz,
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              elevation: 15,
              shadowColor: Colors.green),
          child: Text(
            "Reiniciar?",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
