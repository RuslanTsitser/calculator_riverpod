import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:function_tree/function_tree.dart';
import '../../main.dart';

class CalculatorInputField extends ConsumerWidget {
  const CalculatorInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c = ref.read(calculatorProvider.notifier);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                c.myController.clear();
              },
            ),
            hintText: 'Введите формулу или сообщение',
          ),
          controller: c.myController,
          validator: (value) {
            try {
              value?.interpret();
            } catch (e) {
              return 'Error';
            }
          }),
    );
  }
}
