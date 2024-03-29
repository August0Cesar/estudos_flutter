import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  TransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(labelText: "Titulo"),
          ),
          TextField(
            controller: valueController,
            decoration: const InputDecoration(labelText: "Valor (R\$)"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  print("${titleController.text} \n ${valueController.text}");
                },
                child: const Text(
                  "Nova Transação",
                  style: TextStyle(color: Colors.purple),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
