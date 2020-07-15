import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final void Function() onButtonSelected;

  Answer(this.answer,this.onButtonSelected);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: onButtonSelected,
        child: Text(answer),
      ),
    );
  }
}
