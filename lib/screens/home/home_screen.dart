import 'package:flutter/material.dart';
import 'package:kalkulator_faura/screens/home/input_section.dart';
import 'package:kalkulator_faura/screens/home/keyboard_section.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Simple Calculator'),
        ),
        body: Column(
          children: [
            const MyInputSection(),
            SizedBox(
                width: double.infinity,
                height: 1,
                child:
                    ColoredBox(color: Theme.of(context).colorScheme.secondary)),
            const MyKeyboardSection(),
          ],
        ));
  }
}
