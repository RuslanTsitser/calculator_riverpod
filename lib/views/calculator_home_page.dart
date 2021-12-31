import 'package:calculator_riverpod/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/calculator_input_field.dart';
import 'widgets/result_field.dart';

class CalculatorHomePage extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();
  CalculatorHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c = ref.read(calculatorProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Калькулятор'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            CalculatorInputField(),
            ResultField(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState!.validate() == true) {
            c.addToList();

            formKey.currentState!.save();
          }
        },
      ),
    );
  }
}
