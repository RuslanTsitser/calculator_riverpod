import 'package:calculator_riverpod/calculator_change_notifier.dart';
import 'package:calculator_riverpod/calculator_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'calculator_home_page.dart';

void main() {
  runApp(const MyApp());
}

final calculatorProvider =
    StateNotifierProvider<CalculatorStateNotifier, CalculatorState>(
        (ref) => CalculatorStateNotifier());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CalculatorHomePage(),
      ),
    );
  }
}
