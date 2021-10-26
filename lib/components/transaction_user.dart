import 'dart:math';
import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'compents.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida.',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz.',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta #1',
      value: 496.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta #2',
      value: 152.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't6',
      title: 'Conta #3',
      value: 152.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't7',
      title: 'Conta #4',
      value: 152.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
