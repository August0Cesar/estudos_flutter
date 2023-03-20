import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:app_despesa/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactionList;

  const TransactionList(this.transactionList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionList.map((e) {
        return Card(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  "R\$ ${e.value.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    DateFormat("d MMM y").format(e.date),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
