import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                labelText: r'Valor (R\$)',
              ),
            ),
            TextButton(
              onPressed: () {
                final title = titleController.text;
                final value = double.tryParse(valueController.text) ?? 0.0;

                onSubmit(title, value);
              },
              child: const Text(
                'Nova Transação',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
