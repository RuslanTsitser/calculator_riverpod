import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:function_tree/function_tree.dart';
import 'package:uuid/uuid.dart';

part 'calculator_state_notifier.freezed.dart';

const _uuid = Uuid();

@freezed
class CalculatorState with _$CalculatorState {
  const CalculatorState._();
  const factory CalculatorState({
    String? id,
    String? inputField,
    String? result,
  }) = _CalculatorState;
}

class CalculatorStateNotifier extends StateNotifier<List<CalculatorState>> {
  CalculatorStateNotifier([List<CalculatorState>? initialState])
      : super(initialState ?? []);

  final myController = TextEditingController();

  void addToList() {
    state = [
      ...state,
      const CalculatorState().copyWith(
        id: _uuid.v4(), // random id
        inputField: myController.text,
        result: myController.text.interpret().toString(),
      )
    ];
  }

  void removeFromList(CalculatorState calculatorState) {
    state = state.where((element) => element != calculatorState).toList();
  }
}
