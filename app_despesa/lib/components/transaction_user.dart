import 'package:app_despesa/components/transaction_form.dart';
import 'package:app_despesa/components/transaction_list.dart';
import 'package:app_despesa/models/transaction.dart';
import 'package:flutter/widgets.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(id: "ps4", title: "Ps4", value: 2690, date: DateTime.now()),
    Transaction(id: "ps5", title: "Ps5", value: 4690, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionList(_transactions), TransactionForm()],
    );
  }
}
