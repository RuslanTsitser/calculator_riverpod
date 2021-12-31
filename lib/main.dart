import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state_notifiers/calculator_state_notifier.dart';
import 'views/calculator_home_page.dart';

void main() {
  runApp(const MyApp());
}

final calculatorProvider =
    StateNotifierProvider<CalculatorStateNotifier, List<CalculatorState>>(
        (ref) => CalculatorStateNotifier());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CalculatorHomePage(),
      ),
    );
  }
}
