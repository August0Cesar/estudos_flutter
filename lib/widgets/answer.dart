import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final void Function() onButtonSelected;

  Answer(this.answer, this.onButtonSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        onPressed: onButtonSelected,
        style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            elevation: 15,
            shadowColor: Colors.green),
        child: Text(
          answer,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
