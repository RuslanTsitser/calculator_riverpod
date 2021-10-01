import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorChangeNotifier extends ChangeNotifier {
  final myController = TextEditingController();
  String inputField = '0';
  String _result = '0';
  String get result => _result;
  List resultList = [];
  final internalList = List.filled(2, '');

  void getResult() {
    inputField = myController.text;
    _result = inputField.interpret().toString();
    internalList[0] = inputField;
    internalList[1] = _result;
    notifyListeners();
  }

  void addResult() {
    resultList.add(internalList);
    notifyListeners();
  }
}
