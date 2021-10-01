import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:function_tree/function_tree.dart';

part 'calculator_state_notifier.freezed.dart';

@freezed
class CalculatorState with _$CalculatorState {
  const CalculatorState._();
  const factory CalculatorState({
    @Default('0') String inputField,
    @Default('0') String result,
  }) = _CalculatorState;
}

class CalculatorStateNotifier extends StateNotifier<CalculatorState> {
  CalculatorStateNotifier() : super(CalculatorState());

  final myController = TextEditingController();

  void getResult() {
    state = state.copyWith(
      result: state.inputField.interpret().toString(),
    );
  }

  void setInputField() {
    state = state.copyWith(inputField: myController.text);
  }
}
