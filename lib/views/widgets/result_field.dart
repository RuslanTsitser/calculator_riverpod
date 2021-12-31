import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';

class ResultField extends ConsumerWidget {
  const ResultField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateWatch = ref.watch(calculatorProvider);
    final stateNotifierWatch = ref.watch(calculatorProvider.notifier);

    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 8),
        itemCount: stateWatch.length,
        itemBuilder: (context, index) {
          int reserveIndex = stateWatch.length - index - 1;
          return ListTile(
            title: Text('Результат: ${stateWatch[reserveIndex].result!}'),
            subtitle: Text(stateWatch[reserveIndex].inputField!),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                stateNotifierWatch.removeFromList(stateWatch[reserveIndex]);
              },
            ),
          );
        },
      ),
    );
  }
}
