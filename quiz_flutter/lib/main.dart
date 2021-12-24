import 'package:flutter/material.dart';
import 'package:flutter_quiz_curso/widgets/quiz.dart';
import 'package:flutter_quiz_curso/widgets/result_questionario.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Curso',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Quiz Curso'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionSelected = 0;
  int _pontuacaoAtual = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'texto': 'Whats your name?',
      'resposta': [
        {'texto': 'May name is Augusto', 'pontos': 10},
        {'texto': 'I am Jerry', 'pontos': 8},
        {'texto': 'Mariah', 'pontos': 8}
      ],
    },
    {
      'texto': 'How are you?',
      'resposta': [
        {'texto': 'Im fine.', 'pontos': 3},
        {'texto': 'Not very well.', 'pontos': 4},
        {'texto': 'Greats man.', 'pontos': 8}
      ],
    },
    {
      'texto': 'Do you walked last nith?',
      'resposta': [
        {'texto': 'Yes sr.', 'pontos': 1},
        {'texto': 'I forget.', 'pontos': 5},
        {'texto': 'no dont like.', 'pontos': 2}
      ],
    },
  ];

  bool get hasSelectedQuestion {
    return _questionSelected < _questions.length;
  }

  void _responder(int pontuacao) {
    if (hasSelectedQuestion) {
      setState(() {
        _questionSelected++;
        _pontuacaoAtual += pontuacao;
      });
    }
  }

  void _onRestartQuiz() {
    setState(() {
      _questionSelected = 0;
      _pontuacaoAtual = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: hasSelectedQuestion
            ? Quiz(
                questions: _questions,
                onAnswersQuiz: _responder,
                questionSelected: _questionSelected)
            : ResultQuestionario(
                pontuacao: _pontuacaoAtual,
                onRestartQuiz: _onRestartQuiz,
              ));
  }
}
