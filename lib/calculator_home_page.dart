import 'package:calculator_riverpod/calculator_change_notifier.dart';
import 'package:calculator_riverpod/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorHomePage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  CalculatorHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            CalculatorInputField(),
            ResultField(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState!.validate() == true) {
            context.read(calculatorProvider.notifier).setInputField();
            context.read(calculatorProvider.notifier).getResult();
            formKey.currentState!.save();
            // context.read(calculatorProvider).addResult();
          }
        },
      ),
    );
  }
}

class ResultField extends ConsumerWidget {
  const ResultField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final watcher = watch(calculatorProvider);
    final String text = watcher.result;
    return Text(text);
  }
}

class CalculatorInputField extends StatelessWidget {
  const CalculatorInputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: context.read(calculatorProvider.notifier).myController,
        validator: (value) {
          try {
            value?.interpret();
          } catch (e) {
            return 'Error';
          }
        });
  }
}
