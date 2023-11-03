import 'package:flutter/material.dart';

class MyInputSection extends StatelessWidget {
  const MyInputSection({Key? key}) : super(key: key);

  static final ValueNotifier<String> input = ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ValueListenableBuilder(
              valueListenable: input,
              builder: (_, String value, __) {
                String newValue = value;

                newValue = newValue.replaceAll('*', '×');
                newValue = newValue.replaceAll('/', '÷');

                return SelectableText(
                  (value.isEmpty ? '0' : newValue),
                  style: const TextStyle(fontSize: 50),
                );
              }),
        ),
      ),
    );
  }
}
