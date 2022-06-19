// ignore_for_file: non_constant_identifier_names
import 'package:calculator/widgets/buttons.dart';
import 'package:flutter/material.dart';

ValueNotifier<String> Output = ValueNotifier('');

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 2,
            child: ValueListenableBuilder(
              valueListenable: Output,
              builder: (BuildContext ctx, String value, Widget? _) {
                return Container(
                  color: Colors.blueGrey,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.bottomRight,
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Text(value,
                        style: const TextStyle(
                            fontSize: 90, fontWeight: FontWeight.bold)),
                  ),
                );
              },
            ),
          ),
          const Divider(
            height: 30,
          ),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    children: const [
                      ActionButton(label: 'C'),
                      ActionButton(label: '⌫'),
                      ActionButton(label: '%'),
                      ActionButton(label: '÷'),
                    ],
                  ),
                  Row(
                    children: const [
                      NumButton(label: '7'),
                      NumButton(label: '8'),
                      NumButton(label: '9'),
                      ActionButton(label: '×'),
                    ],
                  ),
                  Row(
                    children: const [
                      NumButton(label: '4'),
                      NumButton(label: '5'),
                      NumButton(label: '6'),
                      ActionButton(label: '+'),
                    ],
                  ),
                  Row(
                    children: const [
                      NumButton(label: '1'),
                      NumButton(label: '2'),
                      NumButton(label: '3'),
                      ActionButton(label: '−'),
                    ],
                  ),
                  Row(
                    children: const [
                      ActionButton(label: '•'),
                      NumButton(label: '0'),
                      ActionButton(label: 'π'),
                      ActionButton(label: '='),
                    ],
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
